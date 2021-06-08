<!-- quand on fait une recherche pour l'admin la totalité des gites sont visible
même s'il n'y a plus de disponibilitée
-->
<?php
require_once('libraries/database.php');

// appel à la BBD
$pdo=getPdo();
//requête  pour le Read
$result = $pdo->query("SELECT * FROM gite");
$gites = $result->fetchall();
//requête  pour le Read
$gites=$pdo->query("SELECT * FROM gite ORDER BY id_gite DESC");

if(isset($_GET['result']) && !empty($_GET['result'])){
    //securise les données avec htmlspecialchars
    $result = htmlspecialchars($_GET['result']);
    $gites=$pdo->query("SELECT * FROM gite WHERE categorie LIKE '%". $result ."%' OR localisation LIKE '%". $result ."%' ORDER BY id_gite DESC");
}

// ------------------------------- DELETE --------------------------------------

if(isset($_GET['id_gite'])){
    
    $sqlSelect='SELECT * FROM `gite` WHERE id_gite = :id_gite';
// variable preparatiuon de la requête
    $query = $pdo->prepare($sqlSelect);
// // execution de la requête
    $query->bindParam(':id_gite',$_GET['id_gite'],PDO::PARAM_INT);
    $query->execute();
    $produit=$query->fetch();

    $req = $pdo->exec("DELETE FROM gite WHERE id_gite = $_GET[id_gite]");
    // header('Location: index_admin.php');
}
//Modifier un produit (UPDATE)
//if(isset($_POST['id_prod']) && $_POST['id_prod']){
    
// ------------------------------FIN DELETE -------------------------------------
include('inc/header_admin.php');
?>

<!-- formulaire de connexion pour l'accés au dashboard de l'admin -->


<!-- debut foreach -->

<?php if($gites->rowCount()>0){?>
    <?php foreach ($gites as $gite): extract($gite) ?>
        <div class="etiquette">
            <div class="card mb-3" style="max-width: 100%;">
                <div class="row g-0">

                    <div class="col-md-3">
                        <div class="imgSizeSquare" style="background-image:  url(<?=$image_rect_1?>);"></div>
                    </div>
                    <div class="col-md-7">
                        <div class="card-body sleep">
                            <h5 class="card-title"><?=$name?></h5>
                            <p class="card-text"><?=$description?></p>
                            <p class="card-text"><i class="fas fa-users"> <?=$nbr_couchage?> Adultes</i></p>
                            <h6><?=$prix?>€</h6>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="card-body btnAdmin"> 
                            
                            <!-- <button type="button" class="btn btn-primary">Modifier</button> -->
                            <a href="form_updategite_admin.php?id_gite=<?= $id_gite ?>" class="btn btn-primary">Modifier</a>
                            <!-- <button type="button" class="btn btn-primary">Supprimer</button> -->
                            <a href="index_admin.php?id_gite=<?= $id_gite ?>" class="btn btn-primary" onclick="return confirm('Êtes-vous sûr de supprimer ce gite ?')">Supprimer</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php endforeach ?>
    <?php }else{?>
    <h3 class="noResSearch">Aucun resultat pour : <?= $result ?>...</h3>
<?php } ?>  

<?php include('inc/footer.php');?>