# Documentation de test - Script Antivirus

---
## 1. Introduction

Afin de tester notre programme, nous vous fournissons deux fichiers :

- `antivirus.sh` : Le script principal contenant l'intégralité du programme respectant le cahier des charges.
    
- `prepare_test.sh` : Un programme d'environnement qui permet de générer automatiquement une arborescence et des fichiers (sains et corrompus) pour effectuer vos tests sans création manuelle.
    

## 2. Détails des fonctions

Voici les fonctionnalités disponibles dans le script principal que vous pourrez tester :

- **Fonction 1 (Chercher) :** Recherche les fichiers correspondant au critère (extension du virus) dans un répertoire donné.
    
- **Fonction 2 (Déplacer) :** Déplace les fichiers identifiés comme virus vers un dossier de quarantaine.
    
- **Fonction 3 (Annoter) :** Renomme les fichiers infectés en ajoutant un suffixe (ex: `_virus`).
    
- **Fonction 4 (Compter) :** Affiche le nombre de virus détectés dans l'historique.
    
- **Fonction 5 (Afficher contenu) :** Affiche le contenu complet d'un fichier choisi.
    
- **Fonction 6 (Historique) :** Affiche le contenu du fichier `historique.txt`.
    
- **Fonction 7 & 8 (Head/Tail) :** Affiche respectivement les X premières ou X dernières lignes d'un fichier.
    

## 3. Programme d'environnement

Pour éviter de créer les dossiers à la main, il vous est fourni un programme `prepare_test.sh`1.

### Installation

1. Créez le fichier sur votre machine : `nano prepare_test.sh`
    
2. Copiez le contenu fourni.
    
3. Ajoutez les droits d'exécution : `chmod 700 prepare_test.sh`
    

### Utilisation de l'environnement

Lancez le script :

Bash

```
./prepare_test.sh
```

Sélectionnez l'option "1. Créer les fichiers test".

Cela va générer un répertoire dossier_test contenant :

- `fichier2.sha` (Virus)
    
- `Dossier1/fichier4.sha` (Virus dans un sous-dossier)
    
- Des fichiers textes inoffensifs (`.txt`, `.sh`).
    

Une fois l'environnement créé, quittez ce script pour lancer l'antivirus.

## 4. Lancement du test (Script Intégral)

Le programme principal se nomme `antivirus.sh`. Il nécessite **un argument** au lancement : le chemin d'un fichier contenant l'extension du virus à chercher.

### Prérequis

Créez un fichier contenant l'extension du virus (le critère) :

Bash

```
echo ".sha" > critere.txt
```

### Exécution

Lancez le script avec le fichier critère en paramètre :

Bash

```
./antivirus.sh critere.txt
```

## 5. Vérification test manuel

Afin de vérifier l'efficacité des fonctions, un retour sous forme d'echo vous sera fait dans le terminal2.

Vous pouvez également ouvrir un second terminal pour effectuer des commandes de vérification (ls, cat, tree) et voir si les modifications ont bien été prises en compte3.

### Scénarios de test suggérés :

1. **Test de détection (Choix 1) :**
    
    - Lancez l'option 1.
        
    - Indiquez le chemin : `dossier_test`.
        
    - _Vérification :_ Le fichier `historique.txt` doit contenir les chemins de `fichier2.sha` et `fichier4.sha`.
        
2. **Test de déplacement (Choix 2) :**
    
    - Créez un dossier de destination (ex: `mkdir quarantaine`).
        
    - Lancez l'option 2. Source : `dossier_test`, Destination : `quarantaine`.
        
    - _Vérification :_ Faites `ls quarantaine` pour voir si les virus y sont.
        
3. **Test d'annotation (Choix 3) :**
    
    - Réinitialisez l'environnement via `prepare_test.sh` (Option 2).
        
    - Lancez l'option 3 sur `dossier_test`.
        
    - _Vérification :_ Faites `ls -R dossier_test`. Les fichiers `.sha` devraient être renommés avec le suffixe `_virus`.
        
