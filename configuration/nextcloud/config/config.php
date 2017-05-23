<?php
$CONFIG = array (
  'datadirectory' => '/data',
  'apps_paths' => 
  array (
    0 => 
    array (
      'path' => '/nextcloud/apps',
      'url' => '/apps',
      'writable' => false,
    ),
    1 => 
    array (
      'path' => '/apps2',
      'url' => '/apps2',
      'writable' => true,
    ),
  ),
  'memcache.local' => '\\OC\\Memcache\\APCu',
  'instanceid' => 'ocadc83b19e7',
  'mail_from_address' => 'contact',
  'logtimezone' => 'UTC',
  'logdateformat' => 'Y-m-d H:i:s',
  'passwordsalt' => '9qEW5BUa1Ug9jvGRyUhGRrtCaK1+1o',
  'secret' => 'TLcdW60d2dBqigw1Gw5Vo9ohsoO1fX4tVMOfoSUORyhlVLmP',
  'trusted_domains' => 
  array (
    0 => 'nextcloud.wt5.ephec-ti.be',
  ),
  'overwrite.cli.url' => 'http://nextcloud.wt5.ephec-ti.be',
  'dbtype' => 'sqlite3',
  'version' => '11.0.3.2',
  'installed' => true,
  'mail_smtpmode' => 'php',
  'mail_domain' => 'wt5.ephec-ti.be',
);
