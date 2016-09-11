<?php

// init composer
$autoloader = require __DIR__ . '/vendor/autoload.php';
$autoloader->addPsr4(false, __DIR__ . '/classes/');


// config
date_default_timezone_set('Australia/Brisbane');

Fierce\Env::set('auth_salt', '51c9ea6d59f22130bb3ae33ae42751cbfa1ed8c0');
Fierce\Env::set('site_name', 'My Great Site');


// run CMS
if (in_array(@$_SERVER['HTTP_HOST'], ['localhost', '[shell]'])) {
  Fierce\Env::set('dev_mode', true);
  Fierce\Env::set('base_url', 'http://localhost/' . basename(__DIR__) . '/');
  Fierce\Env::set('db', new Fierce\DB('pdo', 'mysql:dbname=mygreatsite;host=127.0.0.1', 'root', 'root'));
} else {
  Fierce\Env::set('dev_mode', false);
  Fierce\Env::set('base_url', 'https://mygreatsite.com/');
//   Fierce\Env::set('db', new Fierce\DB('pdo', 'mysql:dbname=mygreatsite;host=127.0.0.1', 'user', 'password'));
}



function dp($var, $exit=true)
{
  if (class_exists('Fierce\\ResponseCache')) {
    Fierce\ResponseCache::disable();
  }
  
  print '<pre style="border: 1px solid red; font-family:monospace; display: inline-block; padding: 4px 10px">';
  print htmlspecialchars(print_r($var, true));
  print '</pre>';
  
  if ($exit) {
    exit();
  }
}
