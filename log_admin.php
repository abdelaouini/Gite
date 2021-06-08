<?php
require_once('src/login.php');


$login = new Login($_POST);

if ($login->logged) {
    header('location:index_admin.php');
}

?>
<!DOCTYPE html>
<html lang="fr">
  <head>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
      integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="asset/css/global.css" />
    <link rel="stylesheet" href="asset/css/formulaire.css" />
    <link rel="stylesheet" href="asset/css/gite_etiquette.css" />
    <link rel="stylesheet" href="asset/css/gite_fiche.css" />
    <link rel="stylesheet" href="asset/css/nav.css" />
    <link rel="stylesheet" href="asset/css/log_admin.css" />
    <meta charset="UTF-8" />
    <title>AbJc.com</title>
  </head>
  <body class="fond">
    <div class="container connexion shadow-lg p-3 mb-5 bg-white rounded">
        <div class="centerlog">
            <div><h1 class="connecter">Connecter</h1></div>
            <form action="log_admin.php" method="post">
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" name="email" id="email" aria-describedby="emailHelp">
                    <small id="email" class="form-text text-muted">Nous ne partagerons jamais votre e-mail avec personne
                        d'autre.</small>
                </div>
                <div class="form-group">
                    <label for="password">Mot de passe</label>
                    <input type="password" class="form-control" name="password" id="password">
                </div>

                <button type="submit" class="btn btn-dark acceder">Acceder</button>
            </form>
        </div>
    </div>
  </body>
</html>