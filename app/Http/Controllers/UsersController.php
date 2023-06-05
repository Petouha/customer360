<?php

namespace App\Http\Controllers;

use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Facades\DB;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function showAll()
    {
        $request = DB::select('SELECT subscriptions.MSISDN,subscribers.firstName, subscribers.lastName, -ROUND(DATEDIFF(subscribers.contractDate, CURRENT_DATE)/365) AS Seniority, subscribers.wilaya, subscriptiontypes.commercialName AS Subscriptions_Type FROM (subscribers JOIN subscriptions ON subscribers.id = subscriptions.subscriberID ) JOIN subscriptiontypes ON subscriptiontypes.id = subscriptions.subscriptionTypeID;');
        return response()->json($request);
    }
    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show($MSISDN)
    {
        //informations about subscriber
        $subscriberInfo = DB::select("SELECT CONCAT(subscribers.firstName,' ',subscribers.lastName) AS fullName, -ROUND(DATEDIFF(subscribers.contractDate, CURRENT_DATE)/12) AS Seniority,
        subscribers.wilaya,subscriptions.MSISDN, subscriptiontypes.commercialName AS Subscriptions_Type,
        -ROUND(DATEDIFF(subscribers.dateBirth, CURRENT_DATE)/365) AS Age,
        behaviours.sex, behaviours.lineType, subscriptions.balance FROM
        (subscribers JOIN subscriptions ON subscribers.id = subscriptions.subscriberID )
        JOIN subscriptiontypes ON subscriptiontypes.id = subscriptions.subscriptionTypeID
        JOIN behaviours ON behaviours.MSISDN = subscriptions.MSISDN
        WHERE subscriptions.MSISDN=".$MSISDN.";");

        //eligble packages
        $packages = DB::select('SELECT DISTINCT packages.commercialName, packages.price, packages.id, packages.SMS, packages.data, packages.voiceOffnet, packages.voiceOnnet
        FROM eligble_packages
        JOIN subscriptions ON eligble_packages.subscriptionTypeId = subscriptions.subscriptionTypeId
        JOIN packages ON packages.id = eligble_packages.packageId
        WHERE subscriptions.MSISDN='. $MSISDN.';');
        //current package and consumption
        $consumption = DB::select('SELECT packages.id, packages.commercialName AS packageName, remainingData,remainingOffnet,remainingOnnet,remainingSMS, DATE_ADD(dateActivation, INTERVAL 30 DAY) AS expirationDate
        FROM consumptions JOIN subscriptions ON subscriptionId = subscriptions.id
        JOIN packages ON packages.id = consumptions.packageId
        WHERE subscriptions.MSISDN ='.$MSISDN.' AND DATE_ADD(dateActivation, INTERVAL 30 DAY) > CURRENT_DATE AND isActive = 1
        ORDER BY consumptions.dateActivation DESC LIMIT 3;');

        $behaviours = DB::select("SELECT behaviours.MSISDN, valueSegment,valueSegmentInterval,behaviorSegments,churnRisk,subscriptions.balance
        FROM behaviours JOIN subscriptions ON behaviours.MSISDN = subscriptions.MSISDN
        WHERE behaviours.MSISDN=".$MSISDN.";");

        $history = DB::select("SELECT dateActivation, packages.commercialName
        FROM consumptions JOIN subscriptions ON consumptions.subscriptionId = subscriptions.id
        JOIN packages ON packages.id = consumptions.packageId
        WHERE  subscriptions.MSISDN =".$MSISDN." AND isActive = 0;");

        $returnValue = ['subscriber_info'=>$subscriberInfo,'eligble_packages'=>$packages, 'subscribers_consumption'=>$consumption,'subscriber_behaviour'=>$behaviours, 'history' => $history];
        // return json_encode($returnValue);
        return response()->json($returnValue);
    }

    /**
     * Show the form for editing the specified resource.
     */

    public function migrate(Request $request)
    {
        // Use named parameter binding to select the subscription ID based on the MSISDN value
        $subscriptionId = DB::select('SELECT subscriptions.id
            FROM subscriptions JOIN subscribers ON subscriptions.id = subscribers.id
            WHERE MSISDN = :msisdn', ['msisdn' => $request->MSISDN]);

        // Use named parameter binding to update the subscription type ID based on the subscription ID
        DB::update('UPDATE subscriptions
            SET subscriptionTypeId = :subTypeId WHERE id = :id', ['subTypeId' => $request->subTypeId, 'id' => $subscriptionId[0]->id]);

        // Use named parameter binding to delete consumption records based on the subscription ID
        DB::delete('DELETE FROM consumptions WHERE subscriptionId = :id', ['id' => $subscriptionId[0]->id]);


    }



    /**
     * Update the specified resource in storage.
     */
    public function activate(Request $request)
    {

        $packageInfo = DB::select('SELECT commercialName, price, voiceOnnet,voiceOffnet,SMS, data
        FROM packages
        WHERE id ='.$request->pkgId.';');


        $subscriberInfo = DB::select('SELECT id, balance
        FROM subscriptions
        WHERE MSISDN = '.$request->MSISDN.';');



        $condition=DB::select("SELECT packageId, isActive FROM consumptions WHERE isActive = 1 AND subscriptionID = ".$subscriberInfo[0]->id);
        if ($subscriberInfo[0]->balance >= $packageInfo[0]->price)
        {

            foreach ($condition as $cond)
            {
                if($cond->packageId == $request->pkgId)
                    {
                $return=DB::select('UPDATE consumptions SET isActive = 0
                WHERE subscriptionId ='.$subscriberInfo[0]->id.' AND packageId='.$request->pkgId.';');
                //substract the price from balance
                $return=DB::select("INSERT INTO consumptions
                (subscriptionId, packageId, remainingSMS, remainingData, remainingOffnet, remainingOnnet, isActive)
                VALUES ('".$subscriberInfo[0]->id."','".$request->pkgId."','".$packageInfo[0]->SMS."','".$packageInfo[0]->data."','".$packageInfo[0]->voiceOffnet."','".$packageInfo[0]->voiceOnnet."',1);");


                return response()->json(
                    [
                        'success' =>  true,
                        'message' => 'Activation done successfully'
                    ]);

                    }
            }


            $return=DB::select("INSERT INTO consumptions
            (subscriptionId, packageId, remainingSMS, remainingData, remainingOffnet, remainingOnnet, isActive)
            VALUES ('".$subscriberInfo[0]->id."','".$request->pkgId."','".$packageInfo[0]->SMS."'
            ,'".$packageInfo[0]->data."','".$packageInfo[0]->voiceOffnet."','".$packageInfo[0]->voiceOnnet."',1);");

            //substract the price from balance
            $return=DB::select("UPDATE subscriptions
            SET balance = ".($subscriberInfo[0]->balance -$packageInfo[0]->price)."
            WHERE subscriptions.MSISDN =".$request->MSISDN.";");




            return response()->json(
                [
                    'success' =>  true,
                    'message' => 'Activation done successfully'
                ]);

        }
        else {
            return response()->json(
                [
                    'success' =>  false,
                    'message' => "Client doesn't have enough credit"
                ]);
            }
        }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
    public function packages($MSISDN)
    {
       $request = DB::select('SELECT DISTINCT packages.commercialName, packages.price
       FROM eligble_packages
       JOIN subscriptions ON eligble_packages.subscriptionTypeId = subscriptions.subscriptionTypeId
       JOIN packages ON packages.id = eligble_packages.packageId
       WHERE subscriptions.MSISDN='. $MSISDN.';');
       return response()->json($request);
    }

    public function reclamations($MSISDN)
    {
        $request = DB::select("SELECT dateReclamation, reclamationText
        FROM reclamations JOIN subscriptions ON subscriptions.id=idSubscription
        JOIN subscribers ON subscriptions.subscriberId = subscribers.id
        WHERE MSISDN=".$MSISDN.";");
        return response()->json($request);
    }
}

