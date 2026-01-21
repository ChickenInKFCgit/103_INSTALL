#!/bin/bash
function comptermenus()
{
	nbmenus=$(ls -l . | tail -n +2 | wc -l)
	echo "Il y a $nbmenus menus."
	exit 0
}