<?php
$query=DB::table('users')->get();
?>

@json($query)   