#!/bin/bash

echo "Préparation de l'arborescence..."

# création des dossiers
mkdir ENTREES PLATS DESSERTS NOTES PRIX

#création des entrées
echo "Salade de pâtes rapide
Ingrédients :
- Pâtes
- Tomates
- Maïs en boîte
- Thon en boîte
- Huile, sel, poivre

Préparation :
Faites cuire les pâtes. Égouttez-les.
Ajoutez tomates, maïs et thon.
Assaisonnez et mélangez." > ENTREES/salade_pates.txt
echo "Omelette au fromage
Ingrédients :
- 2 œufs
- Fromage râpé
- Sel, poivre

Préparation :
Battez les œufs.
Versez dans une poêle chaude.
Ajoutez le fromage et repliez." > ENTREES/omelette_fromage.txt
echo "Carottes râpées
Ingrédients :
- Carottes
- Jus de citron
- Huile, sel

Préparation :
Râpez les carottes.
Ajoutez citron, huile et sel.
Mélangez." > ENTREES/carottes_rapees.txt
echo "Tartines à l’avocat
Ingrédients :
- Pain
- Avocat
- Sel, citron

Préparation :
Écrasez l’avocat avec sel et citron.
Tartinez le pain." > ENTREES/tartines_avocat.txt
echo "Soupe express
Ingrédients :
- Légumes surgelés
- Bouillon cube

Préparation :
Faites bouillir les légumes avec le bouillon.
Mixez si désiré." > ENTREES/soupe_express.txt

#création des plats
echo "Pâtes à la crème
Ingrédients :
- Pâtes
- Crème fraîche
- Fromage râpé
- Sel, poivre

Préparation :
Faites cuire les pâtes.
Ajoutez crème et fromage.
Mélangez." > PLATS/pates_creme.txt
echo "Riz au thon
Ingrédients :
- Riz
- Thon en boîte
- Oignon

Préparation :
Cuisez le riz.
Faites revenir l’oignon.
Ajoutez le thon et le riz." > PLATS/riz_thon.txt
echo "Poulet poêlé simple
Ingrédients :
- Blanc de poulet
- Huile
- Sel, poivre

Préparation :
Coupez le poulet.
Faites-le cuire à la poêle.
Assaisonnez." > PLATS/poulet_poele.txt
echo "Omelette aux pommes de terre
Ingrédients :
- Pommes de terre
- Œufs
- Sel

Préparation :
Cuisez les pommes de terre.
Ajoutez les œufs battus.
Cuisez doucement." > PLATS/omelette_patates.txt
echo "Pâtes au pesto
Ingrédients :
- Pâtes
- Pesto

Préparation :
Cuisez les pâtes.
Ajoutez le pesto.
Mélangez." > PLATS/pates_pesto.txt

#création des desserts
echo "Yaourt sucré
Ingrédients :
- Yaourt nature
- Sucre

Préparation :
Ajoutez le sucre au yaourt.
Mélangez." > DESSERTS/yaourt_sucre.txt
echo "Compote de pommes
Ingrédients :
- Pommes
- Sucre

Préparation :
Coupez les pommes.
Faites cuire avec un peu d’eau.
Écrasez et sucrez." > DESSERTS/compote_pomme.txt
echo "Gâteau au yaourt
Ingrédients :
- 1 yaourt
- 2 pots de farine
- 1 pot de sucre
- 2 œufs

Préparation :
Mélangez tout.
Cuisson 30 min à 180°C." > DESSERTS/gateau_yaourt.txt
echo "Banane au chocolat
Ingrédients :
- Banane
- Chocolat

Préparation :
Faites fondre le chocolat.
Versez sur la banane." > DESSERTS/banane_chocolat.txt
echo "Riz au lait
Ingrédients :
- Riz
- Lait
- Sucre

Préparation :
Faites cuire le riz dans le lait.
Ajoutez le sucre.
Laissez épaissir." > DESSERTS/riz_lait.txt

echo "Fin de la mise en place."
echo

ls ENTREES PLATS DESSERTS
echo

exit 0
