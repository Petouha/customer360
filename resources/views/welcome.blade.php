<?php

use Illuminate\Support\Facades\DB;
$query=DB::table('users')->get();
?>

@json($query)
