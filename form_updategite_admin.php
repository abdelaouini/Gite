<!-- formulaire pour update le gite  modifier -->
<?php
require_once('libraries/database.php');
$pdo=getPdo();

//variable de la requete sql
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




if(isset($_POST['id_gite'])){

    
    //importation image_rect1 
    $file_name = $_FILES['image_rect_1']['name'];//atteindre le name 
    $file_type = strrchr($file_name, ".");//pour check .png etc...
    $file_tmp_name = $_FILES['image_rect_1']['tmp_name'];//fichier le chemin tempo
    $file_img= "img/" . $file_name;//var 
    $type_autorisees = array('.jpg','.gif','.png','.jpeg');//fichier que l'on controle
    copy($file_tmp_name,$file_img);//prend dans le dossier tempo pour le placer dans le dossier img
    
    // importation image_rect2 
    $file_name2 = $_FILES['image_rect_2']['name'];//atteindre le name 
    $file_type2 = strrchr($file_name2, ".");//pour check .png etc...
    $file_tmp_name2 = $_FILES['image_rect_2']['tmp_name'];//fichier le chemin tempo
    $file_img2= "img/" . $file_name2;//var 
    $type_autorisees = array('.jpg','.gif','.png','.jpeg');//fichier que l'on controle
    copy($file_tmp_name2,$file_img2);//prend dans le dossier tempo pour le placer dans le dossier img

    // importation image_rect3 
    $file_name3 = $_FILES['image_rect_3']['name'];//atteindre le name 
    $file_type3 = strrchr($file_name3, ".");//pour check .png etc...
    $file_tmp_name3 = $_FILES['image_rect_3']['tmp_name'];//fichier le chemin tempo
    $file_img3= "img/" . $file_name3;//var 
    $type_autorisees = array('.jpg','.gif','.png','.jpeg');//fichier que l'on controle
    copy($file_tmp_name3,$file_img3);//prend dans le dossier tempo pour le placer dans le dossier img
    
    // importation image_carre
    $file_name_carre = $_FILES['image_carre']['name'];//atteindre le name 
    $file_type_carre = strrchr($file_name_carre, ".");//pour check .png etc...
    $file_tmp_name_carre = $_FILES['image_carre']['tmp_name'];//fichier le chemin tempo
    $file_img_carre= "img/" . $file_name_carre;//var 
    $type_autorisees = array('.jpg','.gif','.png','.jpeg');//fichier que l'on controle
    copy($file_tmp_name_carre,$file_img_carre);//prend dans le dossier tempo pour le placer dans le dossier img

	$req = $pdo->prepare('UPDATE gite SET name = :name, image_rect_1 = :image_rect_1, image_rect_2 = :image_rect_2, image_rect_3 = :image_rect_3, localisation = :localisation, description = :description, spec = :spec, nbr_couchage = :nbr_couchage, prix = :prix, image_carre = :image_carre, categorie = :categorie where id_gite=:id_gite');


        $req->bindValue(':id_gite', $_POST['id_gite'],PDO::PARAM_INT);
        $req->bindValue(':name' , $_POST['name'],PDO::PARAM_STR);
        $req->bindValue(':localisation', $_POST['localisation'],PDO::PARAM_STR);
        $req->bindValue(':description', $_POST['description'],PDO::PARAM_STR);
        $req->bindValue(':spec', $_POST['spec'],PDO::PARAM_STR);
        $req->bindValue(':nbr_couchage', $_POST['nbr_couchage'],PDO::PARAM_INT);
        $req->bindValue(':prix', $_POST['prix'],PDO::PARAM_INT);
        $req->bindValue(':categorie', $_POST['categorie'],PDO::PARAM_STR);
       //recup les image download
        $req->bindValue(':image_rect_1',  $file_img,PDO::PARAM_STR);
        $req->bindValue(':image_rect_2', $file_img2,PDO::PARAM_STR);
        $req->bindValue(':image_rect_3', $file_img3,PDO::PARAM_STR);
        $req->bindValue(':image_carre', $file_img_carre,PDO::PARAM_STR);

        $executeUpdate=$req->execute();
        if($executeUpdate){
            echo 'Le produit a été mis à jour';
        }else{
            echo 'Echec de la mise à jour';
        }
        header('Location: index_admin.php');
}



include('inc/header_admin.php');
?>
<!-- bouton retour à l'inex admin -->
<div class="container btn-group btnReturnIndex">
    <a href="index_admin.php" class="btn btn-primary">Accueil admin</a>
    </div>
<!--  -->


<div class="container formAdmin">
    <form method="POST" action="form_updategite_admin.php" enctype="multipart/form-data">
    <input type="hidden" name="id_gite" value="<?= $gite['id_gite'] ?>" />
        <div class="flexFormAdmin">
            <div class="col-5">
                <label class="form-label ">Nom</label>
                <input type="text" class="form-control" name="name"  value="<?=$gite['name']?>"> 
                <label class="form-label">Localisation</label>
                <input type="text" class="form-control" name="localisation" value="<?=$gite['localisation']?>">
                <label class="form-label">Spécificités</label>
                <input type="text" class="form-control"  name="spec" value="<?=$gite['spec']?>"> 
                <label class="form-label">Nombre de couchages</label>
                <input type="text" class="form-control" name="nbr_couchage" value="<?=$gite['nbr_couchage']?>">
            </div> 
            <div class="col-5">
                <label class="form-label ">Categorie</label>

                <select class="custom-select mr-sm-2" name="categorie" id="inlineFormCustomSelect">
					<option <?php if($gite['categorie'] =='Hotel'){echo 'selected';} ?> value="hotel">Hotel</option>
					<option <?php if($gite['categorie'] =='Chalet'){echo 'selected';} ?> value="chalet">Chalet</option>
					<option <?php if($gite['categorie'] =='Maison'){echo 'selected';} ?> value="maison">Maison</option>
                    <option <?php if($gite['categorie'] =='Prestige'){echo 'selected';} ?> value="prestige">Prestige</option>  
                </select>
                

                <label class="form-label ">Prix</label>
                <input type="text" class="form-control"  name="prix" value="<?= $gite['prix']?>"> 
                <label class="form-label">Description</label>
                <textarea type="text" class="form-control" name="description" ><?= $gite['description']?></textarea>
            </div>   
        </div>
            <!-- <div class="flexFormAdmin"> -->
                      <!-- pour la disponiobilité voir plus tard -->
                <!-- <label for="dateFinGar">Date Debut :</label>
                <input type="date" id="dateDebut" name="date_debut" max="2025-12-31">
                <label for="dateFinGar">Date fin :</label>
                <input type="date" id="dateFin" name="date_fin" max="2025-12-31"> -->

            <!-- </div> -->
            <div class="flexFormAdmin downloadFile">
                <div>
                    <label for="exampleFormControlFile1">Image rectangle1</label><br>
                    <input type="file" class="form-control-file" name="image_rect_1" ><br>
                    <label for="exampleFormControlFile1">Image rectangle2</label><br>
                    <input type="file" class="form-control-file" name="image_rect_2" ><br>
                </div>
                <div>
                    <label for="exampleFormControlFile1">Image rectangle3</label><br>
                    <input type="file" class="form-control-file" name="image_rect_3" ><br>
                    <label for="exampleFormControlFile1">Image carre</label><br>
                    <input type="file" class="form-control-file" name="image_carre" ><br>
                </div>
            </div> 
            
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>


<?php
include('inc/footer.php');
?>
<!-- 
Passer la requête dans le mail du user pour que 
l'admin le recupe dans le formulaire de reservation.
ou
l'admin ce sert du mail pour renseigner une interface 
de reservation -->