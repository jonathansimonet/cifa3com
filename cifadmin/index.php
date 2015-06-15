<?php
session_start();
include_once('dbh.php');


    if (isset($_POST['identifiant'], $_POST['password'])){

        $stmt = $dbh->prepare("SELECT identifiant, password FROM users WHERE identifiant = ? AND password = ?");
        $stmt->execute(array($_POST['identifiant'], $_POST['password']));
        $row = $stmt->fetch();
        if($row != false){
            $_SESSION['login'] = 'on';
            $_SESSION['identifiant'] = $_POST['identifiant'];
            header("Location: home.php");
        } else {echo '<p id="error">Acces non autorisé</p>';}
    }
?>

<!DOCTYPE html>
<html>
<head lang="fr">
    <meta charset="UTF-8">
    <title>Cifadmin</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div id="content_id">
    <img src="img/logo.jpg" />

    <form action="index.php" method="post">
        <label>Identifiant<br>
            <input type="text" name="identifiant" required="required">
        </label>
        <label>Mot de passe<br>
            <input type="password" name="password" required="required">
        </label>
        <input type="submit" value="Valider">
    </form>
</div>
</body>
</html>