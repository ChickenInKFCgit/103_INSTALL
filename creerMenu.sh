#!/bin/bash
: '
composer un menu.
Le script crée un répertoire MENUS s’il n’existe pas
et crée un fichier dont le nom est saisi par l’utilisateur.
Le script demande à l’utilisateur comment Il souhaite 
composer son menu en lui proposant la liste des entrées, plats et desserts. 
Le script doit proposer à l’utilisateur de consulter les prix et les notes. 
L’utilisateur choisit pas à pas son menu, les noms des suggestions sont écrits dans le menu.
'

if [ ! -d MENUS ]
then
    mkdir MENUS
fi