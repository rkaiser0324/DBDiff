<?php namespace DBDiff\Params;

use DBDiff\Exceptions\CLIException;


class ParamsFactory {
    
    public static function get() {
        
        $params = new DefaultParams;
throw new exception('here');
$params->server1 = [
    'user'     => 'root',
    'password' => '',
    'host'     => 'localhost',
    'port'     => 3306
];
$params->template='templates/simple-db-migrate.tmpl';
$params->nocomments = true;
$params->output = sprintf('./%s-local-changes.sql', strftime('%Y%m%d%H%M'));
$params->include='all';
$params->input = [
    'kind' => 'db',
//'server1.digipowers_standingroomonly_tv:server1.digipowers_standingroomonly_tv_2020031220_liquidweb'
    'source' => ['server' => 'server1', 'db' => 'digipowers_standingroomonly_tv'],
    'target' => ['server' => 'server1', 'db' => 'digipowers_standingroomonly_tv_2020031220_liquidweb'],
];


        // $cli = new CLIGetter;
        // $paramsCLI = $cli->getParams();

        // if (!isset($paramsCLI->debug)) {
        //     error_reporting(E_ERROR);
        // }

        // $fs = new FSGetter($paramsCLI);
        // $paramsFS = $fs->getParams();
        // $params = self::merge($params, $paramsFS);

        // $params = self::merge($params, $paramsCLI);
        
        if (empty($params->server1)) {
            throw new CLIException("A server is required");
        }
        return $params;

    }

    protected static function merge($obj1, $obj2) {
        return (object) array_merge((array) $obj1, (array) $obj2);
    }
}
