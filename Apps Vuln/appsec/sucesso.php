<?php
	session_start();

	if (!isset($_SESSION["login"]))
		header("Location: index.php");
	else if ($_SESSION["login"] == -1)
		header("Location: bloqueado.php");
	else if ($_SESSION["login"] == 0)
		header("Location: index.php");
?>
<font color="#00C000"><strong>Acesso Completo</strong></font>
