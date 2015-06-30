<?php
session_start();
include_once('dbh.php');

if (isset($_SESSION['login']) && isset($_GET['action']) ) {
    if ($_SESSION['login'] != 'on' || $_GET['action'] == 'logout') {
        session_destroy();
        header("Location: index.php");
    }
}
/** Students list */
$stdlst = $dbh->prepare("SELECT name, firstname, website FROM students ORDER BY name");
$stdlst->execute();

/** Modules list */
$modlst = $dbh->prepare("SELECT module_name FROM modules");
$modlst->execute();

/** Insert datas */
if (isset($_POST['title'], $_POST['video_link']) && !empty($_POST['title']) && !empty($_POST['video']))
{
    $inser = $dbh->prepare("INSERT INTO db_cifa3com (title, video_link, synopsis, modules, student_infos) VALUES (?, ?, ?, ?, ?)");
    $inser->execute(array($_POST['title'], $_POST['video_link'], $_POST['synopsis'], $_POST['modules'], $_POST['student_infos']));
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
<header>
    <a href="http://cifa3.com/" title="Aller sur le site"><img src="img/logo.jpg"></a>
    <ul>
        <li><a href="home.php" title="Accueil">Ajouter</a></li>
        <li class="current"><a href="add.php" title="Supprimer">Ajouter</a></li>
    </ul>
    <p>Bonjour <?php echo $_SESSION['identifiant']; ?></p>
    <a id="disconnect" href="?action=logout" title="Déconnexion">Déconnexion</a>

</header>
<div class="content content-add">
    <form method="post" action="add.php">
        <label>Titre <span>*</span>
            <input type="text" name="title" required="required">
        </label>
        <label>Lien de la vidéo <span>*</span>
            <input type="url" name="video_link" required="required">
        </label>
        <label>Synopsis <span>*</span><br />
            <textarea rows="10" name="synopsis" required="required"></textarea>
        </label>
        <label>Nom du modules<br>
            <select name="modules">
                <?php
                    while($modlsts = $modlst->fetch())
                        echo '<option value="'. $modlsts['module_name']. '">'. $modlsts['module_name']. '</option>';
                ?>
            </select>
        </label>
        <br>
        <label>Etudiant<br>
            <select name="student_infos">
                <?php
                    while ( $stdlsts = $stdlst->fetch())
                        echo '<option value"'.$stdlsts['name']. ' '. $stdlsts['firstname']. ' '. $stdlsts['website']. '>'. $stdlsts['name']. ' '. $stdlsts['firstname']. ' - '. $stdlsts['website']. '</option>';
                ?>
            </select>
        </label>
        <br>
        <input type="submit" value="Vadlier">
    </form>
</div>
</body>
</html>