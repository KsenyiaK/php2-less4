<?php

$dbconfig = [
	'adress' => 'localhost',
	'login'  => 'root',
	'pass'   => 'mysql',
	'table'  => 'test_db'
];

$connection = mysqli_connect($dbconfig[adress], $dbconfig[login], $dbconfig[pass], $dbconfig[table]);

?>