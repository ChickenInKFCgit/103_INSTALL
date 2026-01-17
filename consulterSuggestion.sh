#!/bin/bash
: '
consulter une suggestion.
Le script demande de quel type est la suggestion
et affiche à l’écran le contenu d’une suggestion dont le nom est saisi ; 
l’affichage est précédé du nom du fichier
'
echo "Consultation d'une suggestion :"
echo


type='x'
while [ $type != 'e' -a $type != 'p' -a $type != 'd' ]
do
    echo "Quel type de suggestion souhaitez-vous consulter ?"
    echo "Entrez e/p/d pour entrée, plat ou dessert"
    read type
done

case $type in
    e) dossier="ENTREES";;

    p) dossier="PLATS";;

    d) dossier="DESSERTS";;
    
    default) break;;
esac

choix='x'
while [ ! -f $dossier/$choix ]
do
    echo "Quelle suggestion souhaitez-vous consulter ?"
    ls $dossier
    echo
    read choix
done

echo
echo "Affichage de $choix :"
echo
cat $dossier/$choix