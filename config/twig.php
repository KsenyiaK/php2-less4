<?php

Twig_Autoloader::register();
$loader = new Twig_Loader_Filesystem('templates');
$twig = new Twig_Environment($loader);
$template = $twig->loadtemplate('index.tmpl');
$template1 = $twig->loadtemplate('product.tmpl');

?>