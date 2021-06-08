## PROJET: Réservation de gîtes

## TEAM :

- FRONT END : _Abdelkader Aouini_
- BACK END : _Jean Christophe Mairot_

## Deadline : _15 jours_

## Technologies :

- PHP / POO
- HTML
- CSS
- MCD (Modèle Conceptuel des Données - Base de données)
- PHOTOSHOP

## Outils Web :

- https://getbootstrap.com/
- https://fontawesome.com/
- https://fonts.google.com/
- https://unsplash.com/
- https://pixabay.com/fr/
- https://codepen.io/
- https://www.php.net/manual/fr/intro-whatis.php
- https://htmlcolorcodes.com/fr/tableau-de-couleur/tableau-de-couleur-du-web/
- https://www.toutimages.com/codes_caracteres.htm
- https://css-tricks.com/snippets/css/a-guide-to-flexbox/
- https://www.youtube.com/watch?v=jaQGNDqXHxc&ab_channel=Grafikart.fr

## Références Web :(ref pour notre site www.booking.com)

- https://www.booking.com/
- https://www.gites-de-france.com/fr
- https://www.gites.fr/
- https://www.holidaycottages.co.uk/last-minute
- https://www.sykescottages.co.uk/

## Tuto divers :

- https://www.pierre-giraud.com/php-mysql-apprendre-coder-cours/introduction-programmation-orientee-objet/
- https://www.grafikart.fr/formations/programmation-objet-php
- https://vos-formations.com/apprenant/
- https://sql.sh/
- https://www.youtube.com/watch?v=weE2adYHPG0&ab_channel=Grafikart.fr
- https://github.com/Melissa-Fruit/crud/blob/main/config/database.php

## Description du projet :

- [x] réaliser une plateforme de réservation de gîtes se situant dans une zone géographique précise (LA FRANCE).
- [x] choisir des ref : pour les gîtes
- [x] chercher au moin trois sites reference

## ADMIN

- [ ] La plateforme est gérée par un seul administrateur qui pourra s'occuper d'ajouter, modifier ou supprimer des gîtes.
- [ ] formulaire update / delete reservation
- [ ] Connexion / Deconnexion (Admin)
- [ ] CRUD
- [ ] Poo Class Create
- [ ] Poo Class Read
- [ ] Poo Class Update
- [ ] Poo Class Delete

**Fiches des Gîtes** (une fiche détaillé des gîtes ADMIN)

- [ ] Idem fiche gite du user
- [ ] Bouton Modifier
- [ ] Bouton Supprimer

**Base de donnée**

- [ ] BDD gite
- [ ] Table admin (connexion / deconnexion)
- [ ] Table gitec()
- [ ] Table reservation par semaine du samedi au samedi()

## Utilisateur

**Gestion des Cookies** (+)

**Liste des Gîtes** (annuaire en page accueil : étiquettes)

- [x] Photo ratio carre
- [x] Un titre (Intitulé de l’hébergement)
- [ ] Emplacement géographique
- [x] Nombre de couchages
- [x] Un prix
- [x] Un lien vers (la fiche produit) page votre sélection

**Fiches des Gîtes** (une fiche détaillé des gîtes)

- [ ] Trois Photos ratio rectangle (2 types de rectangle : 1 même hauteur, 2 largeur) paysage
- [ ] Titre (Intitulé de l’hébergement)
- [ ] Emplacement géographique
- [ ] Description
- [ ] Spécificités (piscine, nbr salle de bain, jardin, etc...)
- [ ] Nombre de couchages
- [ ] Un prix
- [ ] Disponibilité (intégré dans le formulaire de reservation)
- [ ] Formulaire de réservation (envoie de mail sur codeur.fr pour la reservation.)

**Formulaire de Recherche**
_Des categorie dans un select sur page d'accueil et sur page votre selection_

- [ ] Select date debut
- [ ] Select date Fin
- [ ] Select nombre de couchage
- [ ] Select Type de couchage

## ARCHITECTURE DU PROJET

**DOSSIER asset**

- _Fichier_ css
- _Fichier_ giteFiche.css
- _Fichier_ gitEtiquette.css
- _Fichier_ nav.css
- _Fichier_ global.css
- _Fichier_ variable.css
- _Fichier_ formulaire.css

**DOSSIER js**

1 _global.js_

**DOSSIER img**

- _nom de l'image :adaptable au alt(html)_
- _taille image fiche petit rectangle et grand rectangle_
- _taille image etiquette carre_
- _taille image bando_
- _(.jpeg,.png,.gif,.svg,.webp)_

**DOSSIER ref**

_textes,maquette,image non modifier_

**DOSSIER class**

- _Fichier class hebergement(parent)_
- _Fichier class creat : create.class.php_
- _Fichier class read : read.class.php_
- _Fichier class update : update.class.php_
- _Fichier class delete : delete.class.php_
- _Fichier class chambre :chambre.class.php_
- _Fichier class apparetement : appart.class.php_
- _Fichier class maison-villa : maison.class.php_
- _Fichier class logements prestigeux : maison.class.php_

**DOSSIER inc (inclusion php)**

- Fichier _init.php(bdd--->pdo)_
- Fichier _header.php_
- Fichier _footer.php_

**RACINE**

- Fichier _index.php(page d'acceuil)_
- Fichier _fiche_gite.php(avec un formulaire de reservation)_
- Fichier _connexion.php(admin)_
- Fichier _fiche_gite_admin.php(fiche de gite avec un bouton modifier et un bouton supprimer)_
- Fichier _form_creategite.php_
- Fichier _form_updategite.php_
- Fichier _fiche_reservation.php_

**CONTENU**

- Objet de la class chambre : minimum trois instances(travaillées)
- Objet de la class appartement : minimum trois instances(travaillées)
- Objet de la class maison-villa : minimum trois instances(travaillées)
- Objet de la class logements prestigeux : minimum trois instances(travaillées)

## HELP :

Niveau 1 :
Lorsqu'un gîte est réservé il devient indisponible et ne plus apparaître dans les recherche.
Une fois disponible on peut le réserver à nouveau

Niveau 2 :
Lorsqu'un gîte est réservé pour une période il devient indisponible pour celle-ci.
Il reste accessible par une recherche mais il faudra indiquer les jours d'indisponibilité.
Il est possible de faire une réservation pour les jours disponibles.

## Objectifs :

Découvrir et manipuler la programmation orientée objet en PHP
Consolider les bases du CRUD
Consolider/approfondir les bases du langage SQL
Thèmes :
Programmation orientée objet
Bases de données

Benchmark(marketing) + maquette du site (temps estimé : 3 jours)
Concevoir un MCD
Concevoir un MLD
Concevoir le modèle physique
Concevoir le diagramme de la classe "hébergement" ensemble

exe

## En plus

Afficher un calendrier de disponibilité de chaque gîte
Afficher la localisation des gîtes sur une carte interactif

jc was here
abdel est ici
