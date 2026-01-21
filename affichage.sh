#!/bin/bash

affichage_debut() {
	echo "Voici le contenu du fichier $1 :"
	head -n $2 $1
}

affichage_fin() {
	echo "Voici le contenu du fichier $1 :"
	tail -n $2 $1
}


