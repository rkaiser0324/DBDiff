<?php

require 'vendor/autoload.php';


$dbdiff = new DBDiff\DBDiff;

$params = new DBDiff\Params\DefaultParams;
$params->server1 = [
    'root:@localhost:3306'
];
$params->template='templates/simple-db-migrate.tmpl';
$params->nocomments = true;
$params->output = sprintf('./%s-local-changes.sql', time());
$params->include='all';
$dbdiff->run();
