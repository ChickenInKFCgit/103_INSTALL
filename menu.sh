#!/bin/bash
input=0
while [ $input -ne 6 ]
do
        echo "1) commande 1"
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