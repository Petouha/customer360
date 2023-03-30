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
        $subscriberInfo = DB::select('SELECT subscribers.firstName, subscribers.lastName, -ROUND(DATEDIFF(subscribers.contractDate, CURRENT_DATE)/365) AS Seniority, subscribers.wilaya,subscriptions.MSISDN, subscriptiontypes.commercialName AS Subscriptions_Type
        FROM (subscribers JOIN subscriptions ON subscribers.id = subscriptions.subscriberID )
        JOIN subscriptiontypes ON subscriptiontypes.id = subscriptions.subscriptionTypeID
        WHERE subscriptions.MSISDN='.$MSISDN.';');

        //eligble packages
        $packages = DB::select('SELECT DISTINCT packages.commercialName, packages.price, packages.id
        FROM eligble_packages
        JOIN subscriptions ON eligble_packages.subscriptionTypeId = subscriptions.subscriptionTypeId
        JOIN packages ON packages.id = eligble_packages.packageId
        WHERE subscriptions.MSISDN='. $MSISDN.';');

        $consumption = DB::select('SELECT packages.commercialName AS actual_package, remainingData,remainingOffnet,remainingOnnet,remainingSMS
        FROM consumptions JOIN subscriptions ON subscriptionId = subscriptions.id
        JOIN packages ON packages.id = consumptions.packageId
        WHERE subscriptions.MSISDN ='.$MSISDN.';');


        $returnValue = ['subscriber_info'=>$subscriberInfo,'eligble_packages'=>$packages, 'subscribers_consumption'=>$consumption];
        // return json_encode($returnValue);
        return response()->json($returnValue);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function activate($MSISDN,$pkgId)
    {
        $packageInfo = DB::select('SELECT commercialName, price, voiceOnnet,voiceOffnet,SMS, data
        FROM packages
        WHERE id ='.$pkgId.';');



        $subscriberInfo = DB::select('SELECT id FROM subscriptions WHERE MSISDN = '.$MSISDN.';');

        $return=DB::select('UPDATE consumptions SET packageId='.$pkgId.',remainingSMS='.$packageInfo[0]->SMS.',
        remainingData='.$packageInfo[0]->data.',remainingOffnet='.$packageInfo[0]->voiceOffnet.',
        remainingOnnet='.$packageInfo[0]->voiceOnnet.'
        WHERE subscriptionId ='.$subscriberInfo[0]->id.';');

        return $return;
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
}

