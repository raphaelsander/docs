<?php
	session_start();

	if (isset($_SESSION["login"]))
		$_SESSION["login"] = 0;
	header("Location: index.php");
?>
