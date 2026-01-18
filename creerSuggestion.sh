#!/bin/bash
: '
crée une suggestion d’entrée/plat/dessert. Le script demande un nom de fichier qui sera créé,
le script demande la saisie d’un texte qui sera écrit dans le fichier de la suggestion,
le script demande de quel type est la suggestion pour savoir où enregistrer le fichier (ENTREES/PLATS/DESSERTS).
On supposera que les recettes doivent avoir des noms de suggestion en entrée, plat et dessert différents
'

echo "Création d'une suggestion"

echo "Nom de la suggestion à créer :"
read nom

echo "Contenu de la recette :"
read contenu

type='x'
while [ $type != 'e' -a $type != 'p' -a $type != 'd' ]
do
    echo "De quel type est la suggestion ?"
    echo "Entrez e/p/d pour entrée, plat ou dessert"
    read type
done

case $type in
    e) dossier="ENTREES";;

    p) dossier="PLATS";;

    d) dossier="DESSERTS";;
    
    default) break;;
esac

echo $contenu > $dossier/$nom.txt

echo "Suggestion $nom créée dans $dossier"
echo "Fin de la création"