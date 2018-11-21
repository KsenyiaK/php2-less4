<?php

// echo "<pre>";
// print_r($_REQUEST);
// echo "<pre>";

$connection = mysqli_connect('localhost', 'mysql', 'mysql', 'test_db');
$result = mysqli_query($connection, "SELECT * FROM img");
$array_result = array();
while ($row = mysqli_fetch_assoc($result)) {
	$array_result[] = $row;
};

foreach ($array_result as $value) {
	if ($value[id] == $_REQUEST[id]) { ?>
		<img src="<?=$value[path]?>">
	<?php
	}
}

?>