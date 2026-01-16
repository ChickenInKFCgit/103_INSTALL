#!/bin/bash
function effacer-suggestion ()
{

	echo "Quel type de suggestion voulez vous effacer ?"

	input=0
	while [ $input -ne 1 -a $input -ne 2 -a $input -ne 3 ]
	do
		echo "Veuillez sélectionner un dossier"
		echo "(1)ENTREES  -  (2)PLATS  -  (3)DESSERTS"
		read input
	done

	case $input in
		1)
			chemin="ENTREES"
			;;
		2)
			chemin="PLATS"
			;;
		*)
			chemin="DESSERTS"
			;;
	esac

    echo "Veuillez saisir une suggestion à supprimer :"
    ls ./SUGGESTIONS/$chemin
    read input
	echo "Êtes-vous sûr ? [Y/n]"
    read confirmer
	if [ $confirmer -eq "Y" ]
	then

    	if rm -R ./SUGGESTIONS/$chemin/$input
    	then
        	echo "La suggestion a été effacée" 
    	else
        	echo "Echec de la suppression"
    	fi
    fi
	return 0
}

compter-nb-fichs-dans-reps