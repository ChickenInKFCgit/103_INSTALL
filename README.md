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

**./clean.sh**

/!\\ Attention : ce script supprime l’ensemble des fichiers de travail.


## Lancement du script principal

Le script principal ne reçoit pas d'arguments :

**./menu_surprise.sh**


## Fonctionnalités 

1) Créer une suggestion d'entrée/plat/dessert
2) Supprimer une suggestion d'entrée/plat/dessert
3) Consulter une suggestion
4) Afficher les X Premières lignes d'une suggestion
5) Afficher les X Dernières lignes d'une suggestion
6) compter le nombre de fichiers d'un des trois répertoires ENTREES, PLATS et DESSERTS
7) Noter une suggestion
8) Evaluer le prix d'une suggestion
9) Composer un menu
10) Supprimer un menu
11) Compter le nombre de menus
12) Quitter
