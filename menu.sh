#!/bin/bash
#_____________________TESTS ARGUMENTS
if test $# -ne 3
then
    echo "Usage : bash $0 <chemin_entrees> <chemin_plats> <chemin_desserts>"
    exit 1
fi
#_____________________FONCTIONS

function compter-nb-fichs-dans-reps ()
{

	echo "Choisir un répertoire où compter le nombre de recettes : "

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
	nbfichs=$(ls -l $chemin | tail -n +2 | wc -l)
	echo "Dans le dossier $chemin, il y a $nbfichs recettes."
	return 0
}
#_____________________MAIN LOOP
input=0
while [ $input -ne 12 ]
do
        echo "1) Créer une suggestion d'entrée/plat/dessert"
        echo "2) Supprimer une suggestion d'entrée/plat/dessert"
        echo "3) Consulter une suggestion"
        echo "4) Afficher les X Premières lignes d'une suggestion"
        echo "5) Afficher les X Dernières lignes d'une suggestion"
        echo "6) compter le nombre de fichiers d'un des trois répertoires ENTREES, PLATS et DESSERTS"
        echo "7) Noter une suggestion"
        echo "8) Evaluer le prix d'une suggestion"
        echo "9) Composer un menu"
        echo "10) Supprimer un menu"
        echo "11) Compter le nombre de menus"
        echo "12) Quitter"

        read input

        case $input in
            1)
                    input=1
                    ;;
            2)
                    input=2
                    ;;
            3)
                    input=3
                    ;;
            4)
                    input=4
                    ;;
            5)
                    input=5
                    ;;
            6)
                    input=6
                    ;;
            7)
                    input=7
                    ;;
            8)
                    input=8
                    ;;
            9)
                    input=9
                    ;;
            10)
                    input=10
                    ;;
            11)
                    input=11
                    ;;

        esac
done
exit 0