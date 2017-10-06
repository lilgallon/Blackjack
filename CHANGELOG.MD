##VERSIONS DU BLACKJACK

Alpha 1.0: ?
Fonctionnel, avec iA classique

Alpha 2.0: ?
Nombre de partie à choisir
Scores
Réinitialisation

Alpha 2.1: 26/03/16
Reconnaissance de l’as, dame, roi et valet pour le croupier aussi)
Affichage clear

Alpha 2.2: 29/03/16
      *   Problème résolu sur les défaites / victoires / égalités

Beta1dev: 01/04/16
      ! Début de l’export vers processing (la structure du programme est faite)

Beta2 - Beta 2.1: 06/04/16 - 07/04/16
Première intégration du jeu dans processing : qqes fonctionnalités supprimées, des bugs, besoin de l’aspect graphique vu que les “read…” ne marchent pas sous Processing

Beta3: 08/04/16
Programme fonctionnel, avec AUCUN affichage

Beta3_1: 12/04/16
Ajout d’un premier affichage acceuil (Benjamin) et en jeu (Lilian)

Beta 3.2: 24/04/16
* Réglage du bug lorsque l’on cliquait sur “quitter”, maintenant, il faut finir la partie après avoir cliqué sur quitter pour quitter.
Initialisation permettant de recommencer plusieurs parties, tant que certaines conditions sont remplies
Score est affiché
Emplacement des cartes avec, en attendant d’afficher les cartes, leur valeur qui s’affiche
Le total est affiché à gauche

Bilan 3.2: Programme fonctionnel, comme sous java’s cool, mais sans intégrer l’écran d’affichage de Benjamin. Mais l’ajout du choix de l’AS reste difficile et sera mis plus tard, ne dépendant d’aucune fonctionnalité du programme, le mettre maintenant ou plus tard revient au même.


Beta 3.3: 26/04/16
Menu de benjamin (reste à bien intégrer les boutons)
Choix de l’as
Ajout surprise ( ͡° ͜ʖ ͡°)
 *  Les valeurs des cartes ne sont plus cachées quand on doit choisir l’as
Bug à noter: 
Quand un spam (plus de 50 fois par sec), il est possible de faire buguer le programme avec un tableau qui demande une colonne de plus.
Quelques problèmes d’affichage quand on choisi l’AS

Beta 3.4: 27/04/16

* Bug avec choix de l'as en deuxième carte
* Bug de proportion au niveau de certaines écritures
* Refonte du menu avec les boutons
+ Ajout de polices d'écriture
+ Ajout d'un bouton "options"
+ Ajout d'un bouton "extra"
+ Compatibilité possible sur android (un test a été fait, cela fonctionne)

Dans la fenêtre options:
Résolution : Fenêtré, ou plein écran (avec un bouton appliquer pour restart)
Choix du compte (3 possibles)
Une fois un élément sélectionné, il est mis en couleur, pour montrer qu’il a été choisit

Problèmes: 
Il reste à mettre un bouton pour quitter le menu options et revenir à l’accueil
Il manque le programme d’écriture / lecture pour sauvegarder et charger les valeurs de l’option (le programme est tout prêt pour ajouter cette fonctionnalité)

Beta 3.5: 25/05/16

* Menu options fonctionnel
Écriture / Lecture
Paris ajouté par Benjamin 

Beta 3.6: 06/05/16

* Améliorations graphiques
Image en fond écran du menu
Dans le menu MISE, ajout du bouton retour et affichage de la mise et de l’argent
    Problème pour le bouton MISE +, la police de caractère ne prend pas en compte les +

* Les paris
Quand on ouvre le programme, le jeu va chercher combien d’argent on a dans le fichier externe
A la fin de chaque manche il sauvegarde dans le fichier externe notre argent


Beta 3.7: 07/05/16

Écran de fin de manche
Écran de fin de partie
Ajout de mise sur le panel en jeu
* Élargissement du panel
* Le texte s’affiche sur le panel et non plus le panel sur le texte

Version 1.0 : 08/05/16

Fond
Fondu stylay en fin de manche
Chargement des comptes dans le menu options
Argent sauvegardé automatiquement
Menu de pause
Option activer / désactiver le son
Cartes de hugo
* Menu pause rectifié
* Carré noir pourri 
Note: il y a un problème de refresh de l’écran (aspect visuel)
Problème plus important: Vérifier où est sauvegardé l’argent, si aucun fichier n’est créé au mauvais endroit, après il y a confusion

Version 1.1 : 10/05/16
Ajout d’un bouton “quitter” dans le menu de fin de manche
* Résolution du problème de la 5eme carte non prise en compte
* Amélioration de l’aspect graphique lors du choix de l’as avec un dégradé et la suppression d’un carré noir
* Résolution du problème de scintillement de l’affichage
Note: Il reste un problème de délai lorsque l’on met son curseur sur un bouton (lié aux performances du logiciel, donc indépendant de nous)
* Fond plus clair en jeu et amélioré
* Résolution d’un crash lorsque l’on clique en haut à gauche (par Benjamin)
* Résolution d’un problème d’affichage dans les options (compte #3)
* Résolution d’un problème de rafraîchissement dans le menu options (argent pas actualisé)
* Résolution de la sauvegarde des fichiers txt n’importe où






Version 1.2 : 11/05/16
Ajout de l’affichage de la carte du croupier
* Ajout du chargement de l’argent depuis le fichier externe au lancement du programme en fonction du numéro du compte (aussi lu dans un fichier externe). Avant l’argent était 5cr par défaut avant qu’on sélectionne un compte dans les options

Version 1.3 : 11/05/16
* “cr” remplacé dans le menu miser par $
* Résolution du bug qui nous fait quitter quand on appuie sur OK après avoir quitté une fois 
* La valeur de la carte du croupier n’est plus affichée
* Suppression du point d’interrogation au lieu de l’as lors du choix de celui-ci
* Si quelqu’un pari tout son argent et il perd, son compte en banque revient à 5 (défaut), et sa mise se met automatiquement à 5
* Optimisation en cours de jeu (plus fluide)

Version 1.4 : 12/05/16
* Grosse optimisation au niveau du framerate (remplacement du stockage des cartes)

Version 1.5 : 12/05/16  - VERSION STABLE
* Programme entièrement optimisé (fluidité parfaite en jeu comme dans le menu)
* Résolution de tous les problèmes liés aux caractères non-reconnus ($ remplacé par CR)

Version 2.0 : 19/05/16
Ajout d’un test qui vérifie qu’on utilise bien la dernière version du jeu et qui demande de la télécharger dans le cas contraire
Ajout de règles dans le menu EXTRA
Ajout du nom des créateurs dans le menu EXTRA
Ajout de l’iA casi-Imbatable
Ajout d’une cote lors d’une victoire face à l’iA imbatable de X10
Ajout d’un son de fond au menu qui se relance automatiquement grâce à frameRate
Ajout d’un son d’applaudissement pour 21
Son troll pour un 21
* Problème de $ et CR
* L’iA classque prenait deux fois la deuxième carte piochée
* Résolution d’un moyen pour tricher sur les paris avec un compte bien garni

Version 2.1 : 20/05/16
Ajout d’un système qui vérifie si le lien enligne est accessible, autrement, il prend la dernière sauvegarde du fichier en ligne - Cela règle un crash au démarrage (rare)


Version 2.2 : 20/05/16

* Lorsqu’on perd, avec l’ia extreme, on perd la mise et non pas la mise*cote
* Différence cote / mise dans l’affichage
* Le son de victoire pour avoir fait un blackjack se joue directement
Texte de chargement (fonctionne 1/10)

Version 2.3 : 21-22/05/16

 Ajout graphique : le jeton du menu tourne
* Résolution du bug avec l’argent par défaut de 5
* Résolution du bug avec la mise par défaut de 5 sans prendre en compte l’iA
* Résolution du bug où le jeton n’était pas dynamique lorsque le curseur est dessus
* Résolution du problème avec les hitbox extra et options
Suppression de la fonction valeurcarteJdemande, qui ne servait plus
Dans le code: création d’onglets

Version 2.3Linux : 10/10/16

* Compatibilité LINUX

