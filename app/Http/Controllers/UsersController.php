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
    public function index()
    {
        //
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
        $request = DB::select('SELECT subscribers.firstName, subscribers.lastName, -ROUND(DATEDIFF(subscribers.contractDate, CURRENT_DATE)/365) AS Seniority, subscribers.wilaya,subscriptions.MSISDN, subscriptiontypes.commercialName AS Subscriptions_Type FROM (subscribers JOIN subscriptions ON subscribers.id = subscriptions.subscriberID ) JOIN subscriptiontypes ON subscriptiontypes.id = subscriptions.subscriptionTypeID WHERE subscriptions.MSISDN='.$MSISDN.';');
        return json_encode($request);
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
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
