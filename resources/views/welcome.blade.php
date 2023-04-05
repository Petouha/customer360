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
<form action="/api/users/migrate/v1" method="POST">
    @csrf
    <input type="number" name="MSISDN" id="MSISDN">
    <input type="number" name="subTypeId" id="subTypeId">
    <button type="submit">
        submit
    </button>
</form>

<p>get
    <button><a href="/api/users/v1/799554386">Here</a></button>
</p>
