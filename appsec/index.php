<?php
session_start();

if (!isset($_SESSION["login"]))
	$_SESSION["login"] = 0;

if ($_SESSION["login"] == -1)
	header("Location: bloqueado.php");

else if ($_SESSION["login"] == 1)
	header("Location: sucesso.php");

else if ($_POST["username"] == "ricardo" && $_POST["password"] == "1234") {
	$_SESSION["login"] = 1;
	header("Location: sucesso.php");
}
else if ($_POST["username"] == "longatto" && $_POST["password"] == "1234") {
	$_SESSION["login"] = -1;
	header("Location: bloqueado.php");
}
else {
?>
<form method="POST">
Username: <input name="username" type="text" /><br />
Password: <input name="password" type="password" /><br />
<input type="submit" value="Entrar" />
<?php
    }
?>
