#!/bin/bash
function compter-nb-fichs-dans-reps ()
{

	echo "Choisir un dossier dans lequel compter le nombre de recettes : "

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

compter-nb-fichs-dans-reps
