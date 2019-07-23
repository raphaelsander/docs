<?php
	session_start();

	if (!isset($_SESSION["login"]))
		header("Location: index.php");
	else if ($_SESSION["login"] == 0)
		header("Location: index.php");
	else if ($_SESSION["login"] == 1)
		header("Location: sucesso.php");
?>
<font color="#FF0000"><strong>Acesso Limitado</strong></font>

