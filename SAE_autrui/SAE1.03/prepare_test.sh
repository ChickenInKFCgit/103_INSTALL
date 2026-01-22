#!/bin/bash

# ==============================================================================
# Nom du script : prepare_test.sh
# Description   : Installation des fichiers pour les tests de antivirus.sh
# Auteur        : Herrard Clément, Navarro Thomas
# Date          : 06/01/2026
# Paramètres    : Aucun
# Codes retour  : 0 (Succès), 1 (Erreur Code)
# ==============================================================================

creer_fichier ()
{
    echo ""
    echo "Création des fichiers test en cours..."
    echo ""
    mkdir dossier_test 2>/dev/null
    touch dossier_test/fichier1.txt 2>/dev/null
    echo "Ceci est le contenu du fichier1.txt" > dossier_test/fichier1.txt
    touch dossier_test/fichier2.sha 2>/dev/null
    echo "Ceci est un virus" > dossier_test/fichier2.sha
    touch dossier_test/fichier3.sh 2>/dev/null
    echo "Salade Fromage Tomate Pomme Poire Charcuterie Orange" > dossier_test/fichier3.sh
    mkdir dossier_test/Dossier1 2>/dev/null
    touch dossier_test/Dossier1/fichier4.sha 2>/dev/null
    echo "Ceci est également un virus" > dossier_test/Dossier1/fichier4.sha
    touch dossier_test/Dossier1/fichier5.txt 2>/dev/null
    echo "Ceci est un simple fichier texte." > dossier_test/Dossier1/fichier5.txt
    echo "Les fichiers ont été crées avec succès !"
    echo ""
}

reset_fichier ()
{
    echo ""
    echo "Réinitialisation des fichiers test en cours ..."
    rm -r dossier_test 2>/dev/null
    creer_fichier
    echo "Les fichiers ont bien été réinitialisés avec succès !"
    echo ""
}

supp_dossier ()
{
    echo ""
    echo "Suppression du dossier 'Dossier_test' en cours ..."
    rm -r dossier_test 2>/dev/null
    echo "Le dossier Dossier_test a été supprimé avec succès !"
    echo ""
}

# --- CORPS PRINCIPAL ---

while true; do
    echo ""
    echo "========== MENU PREPARE TEST =========="
    echo "1. Créer les fichiers test"
    echo "2. Rénitialiser les fichiers test"
    echo "3. Supprimer l'environnement de test"
    echo "4. Test chercher les fichiers corrompus"
    echo "5. Test déplacer les fichiers corrompus"
    echo "6. Test annoter les fichiers corrompus"
    echo "7. Test compter les fichiers corrompus"
    echo "8. Test afficher contenu fichier"
    echo "9. Test historique des corrompus"
    echo "10. Test afficher X premières lignes"
    echo "11. Test afficher X dernières lignes"
    echo "q. Quitter"
    
    echo "======================================="
    echo ""
read -p "Votre choix : " choix

case $choix in
    1) creer_fichier   ;;
    2) reset_fichier   ;;
    3) supp_dossier  ;;
    4) chercher_virus ;;
    5) deplacer_virus ;;
    6) annoter_virus ;;
    7) compter_virus ;;
    8) afficher_contenu ;;
    9) historique ;;
    10) afficher_lignes "head" ;;
    11) afficher_lignes "tail" ;;
    q) echo "Fin du script."; exit 0 ;;
    *) echo "Choix invalide." ;;
esac
done