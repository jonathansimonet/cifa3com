<?php
session_start();
include_once('dbh.php');

if (isset($_SESSION['login']) && isset($_GET['action']) ){
    if($_SESSION['login'] != 'on' || $_GET['action'] == 'logout') {
        session_destroy();
        header("Location: index.php");
    }
}

/** Items list */
$itelst = $dbh->prepare("SELECT id, title, video_link, synopsis, modules, student_infos FROM db_cifa3com");
$itelst->execute();

/** Delete items */
if(isset($_GET['trash'])){
    $rmvite = $dbh->prepare("DELETE FROM db_cifa3com WHERE id=". $_GET['trash']);
    $rmvite->execute();
    header('Location: home.php');
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
        <li class="current"><a href="home.php" title="Accueil">Accueil</a></li>
        <li><a href="add.php" title="Ajouter">Ajouter</a></li>
    </ul>
    <p>Bonjour <?php echo $_SESSION['identifiant']; ?></p>
    <a id="disconnect" href="?action=logout" title="Déconnexion">Déconnexion</a>
</header>
<div class="content content-home">
    <form action="home.php" method="post">
    <table>
        <thead>
            <tr>
                <th></th>
                <th>Titre</th>
                <th>Lien vidéo</th>
                <th>Synospis</th>
                <th>Module</th>
                <th>Détails etudiant</th>
            </tr>
        </thead>
        <tbody>
            <?php while($itelsts = $itelst->fetch()): ?>
                <tr>
                    <td>
                        <a class="update" href="" title="Editer"><div class="pencil"></div><div class="pencil-lead"></div></a>
                        <a class="trash" href="?trash=<?php echo $itelsts['id']; ?>" title="Supprimer">x</a>
                    </td>
                    <td>
                        <h1><?php echo $itelsts['title']; ?></h1>
                    </td>
                    <td>
                        <a href="<?php echo $itelsts['video_link']; ?>" target="_blank"><?php echo $itelsts['video_link']; ?></a>
                    </td>
                    <td>
                        <p class="synopsis"><?php echo substr($itelsts['synopsis'], 0, 150); ?><a href="" title="<?php echo $itelsts['synopsis']; ?>">...</a></p>
                    </td>
                    <td>
                        <p><?php echo $itelsts['modules']; ?></p>
                    </td>
                    <td>
                        <p><?php echo $itelsts['student_infos']; ?></p>
                    </td>
                </tr>
            <?php endwhile ?>
        </tbody>
        <tfoot>
            <tr>
                <th></th>
                <th>Titre</th>
                <th>Lien vidéo</th>
                <th>Synospis</th>
                <th>Module</th>
                <th>Détails etudiant</th>
            </tr>
        </tfoot>
    </table>
    </form>
</div>
</body>
</html>