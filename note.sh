#!/bin/bash

note ()
{
	#La fonction prend un paramètre un fichier
	#auquelle un utilisateur donne un nom
	#et une note à une suggestion
	#qui est ajoutée au fichier donné
	echo "Veuillez rentrer une note :"
	read note
	echo "Veuillez donner votre nom"
	read name
	echo "Note : $note 
       	Auteur : $name" >> $1
}

prix ()
{
	echo "Veuillez saisir le prix de la suggestion"
	read prix
	echo "Prix : $prix €" >> $1
}

if [ $# -ne 1 ] ; then
	echo "Le script ne prend pas d'argument"
	exit 1
fi

note $1
prix $1

exit 0


