#!/bin/bash
#_____________________FONCTIONS

function creerSuggestion ()
{
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
}

function supprimersuggestion ()
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

function consulterSuggestion ()
{
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
}

affichage_debut() {
    echo "Voici le contenu du fichier $1 :"
    head -n $2 $1
}

affichage_fin() {
    echo "Voici le contenu du fichier $1 :"
    tail -n $2 $1
}

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

function compternbfichsdansreps ()
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

function composerMenu ()
{
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
}

function supprimermenu {
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

function comptermenus()
{
	nbmenus=$(ls -l ./MENUS | tail -n +2 | wc -l)
	echo "Il y a $nbmenus menus."
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
            creerSuggestion
            ;;
        2)
            supprimersuggestion
            ;;
        3)
            consulterSuggestion
            ;;
        4)
            affichage_debut
            ;;
        5)
            affichage_fin
            ;;
        6)
            compternbfichsdansreps
            ;;
        7)
            note
            ;;
        8)
            prix
            ;;
        9)
            composerMenu
            ;;
        10)
            supprimermenu
            ;;
        11)
            comptermenus
            ;;
    esac
done

exit 0
