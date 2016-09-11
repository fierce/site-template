<?php

require __DIR__ . '/config.php';

Fierce\CMS::handleRequest(Fierce\Env::get('db'));
