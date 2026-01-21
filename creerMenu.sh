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

echo "Quel est le nom du menu que vous souhaitez créer ?"
read nom

echo "~ Composition du menu $nom ~"


# À ajouter :
# - choix de consultation des notes / prix 

choixEntree='x'
while [ ! -f ENTREES/$choixEntree -a ! -f ENTREES/$choixEntree.txt  ]
do
    echo "Choisissez une entrée :"
    ls ENTREES
    echo
    read choixEntree
done

choixPlat='x'
while [ ! -f PLATS/$choixPlat -a ! -f PLATS/$choixPlat.txt  ]
do
    echo "Choisissez un plat :"
    ls PLATS
    echo
    read choixPlat
done

choixDessert='x'
while [ ! -f DESSERTS/$choixDessert -a ! -f DESSERTS/$choixDessert.txt ]
do
    echo "Choisissez un dessert :"
    ls DESSERTS
    echo
    read choixDessert
done

touch MENUS/$nom.txt
echo
echo "~ Menu $nom ~" > MENUS/$nom.txt
echo "Entrée : $choixEntree" >> MENUS/$nom.txt
echo "Plat : $choixPlat" >> MENUS/$nom.txt
echo "Dessert : $choixDessert" >> MENUS/$nom.txt
echo "Bon appétit !" >> MENUS/$nom.txt

cat MENUS/$nom.txt