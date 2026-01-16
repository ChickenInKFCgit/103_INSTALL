## Objectif

Ce projet consiste à développer un script Bash permettant de composer des menus à partir de suggestions d’entrées, de plats et de desserts, stockées sous forme de fichiers dans des répertoires dédiés.

## Arborescence du projet

L’arborescence de travail est générée automatiquement à l’aide du script :

./arbo.sh

Ce script crée notamment les répertoires suivants (s’ils n’existent pas) :
- ENTREES/
- PLATS/
- DESSERTS/
- MENUS/
- NOTES/ENTREES, NOTES/PLATS, NOTES/DESSERTS
- PRIX/ENTREES, PRIX/PLATS, PRIX/DESSERTS


## Nettoyage du projet

Pour supprimer tous les fichiers et répertoires générés et repartir d’un environnement propre, utiliser :

./clean.sh

Attention : ce script supprime l’ensemble des fichiers de travail.


## Lancement du script principal

Le script principal reçoit trois arguments :

./menu_surprise.sh ENTREES PLATS DESSERTS


## Fonctionnalités principales

- Créer une suggestion (entrée / plat / dessert)
- Supprimer une suggestion (avec confirmation)
- Consulter une suggestion
- Afficher les X premières ou dernières lignes d’une suggestion
- Compter le nombre de suggestions par catégorie
- Noter une suggestion (création du répertoire NOTES)
- Évaluer le prix d’une suggestion (création du répertoire PRIX)
- Composer un menu pas à pas (création du répertoire MENUS)
- Supprimer un menu (avec confirmation)
- Compter le nombre de menus
- Quitter le script


## Tests et validation

Le projet inclut :
- une liste de tests descriptive (commandes, résultats attendus, vérifications avant/après),
- un script préparatoire permettant de générer un environnement de test vierge.

Procédure recommandée :
1. Copier le script principal et le script préparatoire dans un dossier vide
2. Exécuter le script préparatoire
3. Suivre les tests séquentiellement en notant les résultats observés


## Remarques

- Les noms de fichiers correspondent aux noms affichés dans les menus.
- Les suggestions d’entrées, plats et desserts doivent avoir des noms distincts.
- Tous les traitements vérifient les erreurs de saisie et les droits d’accès.
