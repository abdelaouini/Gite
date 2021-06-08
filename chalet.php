<!-- quand on fait une recherche pour l'admin la totalité des gites sont visible
même s'il n'y a plus de disponibilitée
-->
<?php
require_once('libraries/database.php');

// appel à la BBD
$pdo=getPdo();


//requête  pour le Read
$gites=$pdo->query("SELECT * FROM gite WHERE categorie LIKE 'chalet' ORDER BY id_gite DESC");

if(isset($_GET['result']) && !empty($_GET['result'])){
    //securise les données avec htmlspecialchars
    $result = htmlspecialchars($_GET['result']);
    $gites=$pdo->query("SELECT * FROM gite WHERE categorie LIKE '%". $result ."%' OR localisation LIKE '%". $result ."%' ORDER BY id_gite DESC");
}



include('inc/header.php');
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
                        <a href="reservation.php?id_gite=<?= $id_gite ?>" class="btn btn-primary">Afficher</button></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php endforeach ?>
    <?php }else{?>
    <h3>Aucun resultat pour : <?= $result ?>...</h3>
<?php } ?>  
<!-- fin foreach -->

<!-- --------- -->
<?php include('inc/footer.php');?>