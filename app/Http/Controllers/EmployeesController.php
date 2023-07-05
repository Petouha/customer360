<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class EmployeesController extends Controller
{
    public function show(Request $request)
    {
        $response = DB::select("SELECT firstName, lastName, registration, email, groups.groupe, users.id, previousLogin
        FROM users JOIN groups ON groupId = groups.id
        WHERE email = '".$request->email."';");

        $activation = DB::select("SELECT COUNT(*) As number_activation FROM sales WHERE userId = ".$response[0]->id." AND saleType='Activation';");
        $migration = DB::select("SELECT COUNT(*) As number_migration FROM sales WHERE userId = ".$response[0]->id." AND saleType='Migration';");
        $response[0]->activation=$activation[0]->number_activation;
        $response[0]->migration=$migration[0]->number_migration;

        $salesList=DB::select("SELECT CONCAT(subscribers.firstName,' ',subscribers.lastName) AS fullName,sales.MSISDN,operationId,price,dateSale,saleType
        FROM sales JOIN users ON userId = users.id
        JOIN subscriptions ON subscriptions.MSISDN = sales.MSISDN
        JOIN subscribers ON subscriptions.subscriberId = subscribers.id
        WHERE userId=".$response[0]->id.";");

        return response()->json([
            'user_info' =>$response,
            'sales'=>$salesList
        ]);
    }

    public function makeSale(Request $request)
    {
        $price = 0;
        $userId = DB::select("SELECT id From users WHERE email = '".$request->email."';");
        if(($request->saleType) == "Activation")
        {
            $price = DB::select("SELECT price, commercialName FROM packages WHERE id =".$request->operationId.";");
            $price=$price[0]->price;
        }
        $info=DB::select("INSERT INTO sales (userId, MSISDN, operationId, price, dateSale,saleType)
        VALUES (".$userId[0]->id.",".$request->MSISDN.",".$request->operationId.",".$price.",current_timestamp(),'".$request->saleType."');");
        if (count($info) == 0) {
            return response()->json(
                [
                    'success' =>  true,
                    'message' => 'Sale registered'
                ]);
        } else return response()->json(
            [
                'success' =>  false,
                'message' => 'Error'
            ]);
    }
}
