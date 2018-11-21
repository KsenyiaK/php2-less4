<?php

//require_once "vendor/lib/Twig/autoloader.php";
require_once "config/dbconnect.php";
//require_once "config/twig.php";

//Twig_Autoloader::register();

require_once "vendor/autoload.php";

use twig\twig;
use Carbon\Carbon;

$carbon = Carbon::now();
var_dump($carbon);
$carbon->addDay();
var_dump($carbon);


$loader = new Twig_Loader_Filesystem('templates');
$twig = new Twig_Environment($loader);
$template = $twig->loadtemplate('index.tmpl');
$template1 = $twig->loadtemplate('product.tmpl');

$result = mysqli_query($connection, "SELECT * FROM img");
$array_result = [];
while ($row = mysqli_fetch_assoc($result)) {
	$array_result += [
	"product$row[id]" => $row
	];
};

	// echo "<pre>";
	// print_r($array_result);
	// echo "</pre>";

if (isset($_GET[id])) {

echo $template1->render([
	'product' => $array_result["product".$_GET[id]]
]);
}

else {
	echo $template->render([
	'products' => $array_result
]);
}

?>