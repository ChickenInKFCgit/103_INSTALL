#!/bin/bash
function supprimer-menu {
	echo "Veuillez saisir le menu à supprimer ou 'q' pour annuler"
	ls ./MENUS
	read input
	case $input in
		"q")
			return 0
			;;
		*)
			echo "Êtes vous certain de vouloir supprimer ce menu ? [Y/n]"
			read confirmer
			if [ $confirmer -eq "Y" ]
			then
				if rm -R ./MENUS/$input 2> /dev/null
				then
					echo "Le Menu a été supprimé."
				else
					echo "Echec de la suppression."
				fi
			fi
			;;
	esac
	return 0
}
supprimer-menu
