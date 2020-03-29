<?php

require 'vendor/autoload.php';


$dbdiff = new DBDiff\DBDiff;
/*
$params = new DBDiff\Params\DefaultParams;
$params->server1 = [
    'user'     => 'root',
    'password' => '',
    'host'     => 'localhost',
    'port'     => 3306
];
$params->template='templates/simple-db-migrate.tmpl';
$params->nocomments = true;
$params->output = sprintf('./%s-local-changes.sql', time());
$params->include='all';
$params->input = [
    'kind' => 'db',
//'server1.digipowers_standingroomonly_tv:server1.digipowers_standingroomonly_tv_2020031220_liquidweb'
    'source' => ['server' => 'server1', 'db' => 'digipowers_standingroomonly_tv'],
    'target' => ['server' => 'server1', 'db' => 'digipowers_standingroomonly_tv_2020031220_liquidweb'],
];
*/
$dbdiff->run($params);
