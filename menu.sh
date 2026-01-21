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
while [ $input -ne 6 ]
do
        echo "1) Créer une suggestion d'entrée/plat/dessert"
        echo "2) commande 2"
        echo "3) commande 3"
        echo "4) commande 4"
        echo "5) commande 5"
        echo "6) Quitter"

        read input

        case $input in
                1)
                        input=1
                        ;;
                2)
                        input=2
                        ;;
                3)

        esac
done
exit 0