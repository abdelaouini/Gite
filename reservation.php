<?php
//con bdd
$pdo = new PDO('mysql:host=localhost;dbname=projet_gite','root','');

// --------------------read pour la fiche de reservation------------------

$sqlSelect='SELECT * FROM gite WHERE id_gite = :id_gite';

// variable preparatiuon de la requête
$query = $pdo->prepare($sqlSelect);

// // execution de la requête
if(isset($_POST['id_gite'])){
    $id_gite = $_POST['id_gite'];
}
elseif(isset($_GET['id_gite'])){
    $id_gite = $_GET['id_gite'];
}
else{
    die('Produit non trouvé !');
}

$query->execute(array(
'id_gite'=>$id_gite,
));
$gite=$query->fetch();


// -------- En dev pour la recup de l'id reservation et id gite------------

//query pour les semaines disponible 
$query=$pdo->query('SELECT * FROM reservation');
$weeks=$query->fetchAll();


//inscription dans la table de jointure id_gite et id_reservation
if($_POST){
$pre=$pdo->prepare('INSERT INTO gite_reservation(gite_id_gite, reservation_id_reservation) VALUES(:id_gite, :id_reservation)');

$pre->bindParam(':gite_id_gite', $_POST['id_gite'], PDO::PARAM_INT);
$pre->bindParam(':reservation_id_reservation', $_POST['id_reservation'], PDO::PARAM_INT);
$pre->execute();
}
include('inc/header.php');
?>
    <div class="reservation shadow p-3 mb-5 bg-white rounded"><h1><?=$gite['name']?></h1>
    <span>18 rue de Ferrare, 77300 Fontainebleau, France : A rajouté</span></div>
    <div><h2 class="ibis"></h2>
    <!--        debut entet img-->
    <!--        div papa-->
    <div class="photosreservation shadow-lg p-3 mb-5 bg-light rounded">
        <div>
            <div><img class="suiteluxe" src="<?=$gite['image_rect_1']?>" alt=""></div>
            <div><img class="chambreluxe" src="<?=$gite['image_rect_2']?>" alt=""></div>
        </div>
        <div><img class="parisvuecathedrale" src="<?=$gite['image_rect_3']?>" alt=""></div>
    </div>
    <h3 class="information-sur-le-logement">Information sur le logement</h3>
    <div class="detail-paragrhe"><p><?=$gite['description']?></p>
        <h3>Ses points forts</h3>
        <i class="fas fa-wifi"> Connexion Wi-Fi gratuite | </i>
        <i class="fas fa-parking"> Parking | </i> <i class="fas fa-paw"> Animaux domestiques admis | </i>
        <i class="fas fa-smoking-ban"> Chambres non-fumeurs | </i>
        <i class="fas fa-glass-cheers"> Bar</i>
        <hr>
        <h3 class="prix-nuit"><?=$gite['prix']?> €</h3>
        <hr>
        <h3>Disponibilité a partir de la semaine : </h3>
        <hr>
    </div>
    <!--  -->
    <div class="d-grid gap-2">
        <form action="" method="POST">
            <input type="hidden" name="id_gite" value="<?= $gite['id_gite'] ?>"/>
              <select class="custom-select mr-sm-2" name="periode" id="inlineFormCustomSelect">
				<?php foreach ($weeks as $week): extract($week)?>
                    <option value="<?=$id_reservation?>"><?=$periode?></option>
                <?php endforeach ?>    
				</select>
            <button class="btn btn-warning reserver" type="submit">Reserver</button>
        </form>
    </div>


    <!-- fin entete img -->


    </div>
<?php include('inc/footer.php'); ?>