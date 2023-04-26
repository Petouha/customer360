<?php

use Illuminate\Support\Facades\DB;

?>
@auth


<ul style="display: flexbox;">
    <li>
    <span class="font-bold uppercase">

        Welcome{{ auth()->user()->name }}
    </span>
    </li>
    <form action="/logout" class="inline" method="POST">
        @csrf
        <button type="submit">
        logout
        </button>
    </form>
    <li>

    </li>
</ul>
@else
<div>
    <a href="/register" >
        Register
    </a>
</div>

<div>
    <a href="/login" >
        login
    </a>
</div>
@endauth
<h1>Migration</h1>
<form action="/api/v1/users/migrate" method="POST">
    @csrf
    <input type="number" name="MSISDN" id="MSISDN">
    <input type="number" name="subTypeId" id="subTypeId">
    <button type="submit">
        submit
    </button>
</form>

<h1>Activation</h1>
<form action="/api/v1/users/activate" method="POST">
    @csrf
    <input type="number" name="MSISDN" id="MSISDN">
    <input type="number" name="pkgId" id="subTypeId">
    <button type="submit">
        submit
    </button>
</form>


<p>get
    <input type="number" >
    <button><a href="/api/v1/users/799554386">Here</a></button>
</p>

