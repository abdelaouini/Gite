<?php
require_once('libraries/database.php');
//connexion base de donnée 
$pdo=getPdo();
//implémentation du module de recherche

?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8"/>
     <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
      integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
      crossorigin="anonymous"
    /> -->
    <link rel="stylesheet" href="./asset/css/bootstrap.css"/>
    <link rel="stylesheet" href="./asset/css/global.css"/>
    <link rel="stylesheet" href="./asset/css/formulaire.css"/>
    <link rel="stylesheet" href="./asset/css/gite_etiquette.css"/>
    <link rel="stylesheet" href="./asset/css/gite_fiche.css"/>
    <link rel="stylesheet" href="./asset/css/nav.css"/>
    <link rel="stylesheet" href="./asset/css/variable.css"/>
    <link rel="stylesheet" href="./asset/css/log_admin.css"/>
    <title>AbJc.com</title>
</head>
<body>
<header>
    <!--    start navbar-->
    <nav class="navbar navbar-expand-lg navbar-light bg-abdel">
        <div class="container">
            <a
                    class="navbar-brand text-white"
                    href="index.php"
            >AbJc.com</a
            >
            <button
                    class="navbar-toggler"
                    type="button"
                    data-toggle="collapse"
                    data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
            >
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a
                                class="nav-link text-white"
                                href="index.php"
                        >Accueil</a>

                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white"
                           href="hotel.php">

                            Hotel</a>

                    </li>
                    <li class="nav-item dropdown">
                        <a
                                class="nav-link text-white"
                                href="chalet.php"
                        >Chalet</a
                        >
                    </li>
                    <li class="nav-item dropdown">
                        <a
                                class="nav-link text-white"
                                href="maison.php"
                        >Maison</a
                        >
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link text-white"
                           href="prestige.php">Prestige</a></li>


                </ul>
                <form class="form-inline my-2 my-lg-0"></form>
            </div>
        </div>
    </nav>
    <!--    end navbar-->
</header>
<div class="bg-light bgsearch border shadow-sm taille-form">
    <div class="container">
        <div class="d-flex justify-content-center">
            <!--    start form-->

            <div class="form">
                <h1 class="h1trouver">
                    Trouvez des offres sur des hôtels, des hébergements indépendants
                    et bien plus encore...<br/>
                    <h2 class="h2dugite">
                        Du gîte champêtre cosy à l'appartement citadin design
                    </h2>
                </h1>
                <form class="form-inline" method="GET">
                    <div class="form-group searchForm">
                        <input 
                        class="form-control mr-3" 
                        type="search" 
                        name="result" 
                        placeholder="Recherche..." 
                        maxlength="30"     
                        size="30"/>
                    
                   
                        <!-- pour l'instant a dev -->
                        <!-- <label for="depart">Depart</label>
                        <input type="date" id="depart" class="form-control mx-sm-3"/>
                        <label for="arriver">Arriver</label>
                        <input type="date" id="arriver" class="form-control mx-sm-3"/>
                        <button class="btn btn btn-primary" type="submit"> -->
                           
                        </button>
                    </div>
            </div>
        </div>
    </div>
</div>
<!--end form-->

<div class="container underHeader">