#!/bin/sh -e
#
# BoboTiG - 28 septembre 2010.
# Script d'installation de wgetz.
#
# Usage : sh install.sh
#

# Variables
TOOL=wgetz
VERSION=0.01
PREFIX=/usr/bin
ICON=/usr/share/icons
DESKTOP=/usr/share/applications
maron="\033[33;03m"
normal="\033[0m"

# C'est parti mon kiki...
if [ $(id -ru) -ne 0 ]; then
	echo ${maron}"Tu dois être root..."${normal}
	su root -c "sh $0"
	exit 0
fi
echo ${maron}"Installation de" ${TOOL} "version" ${VERSION}${normal}
install -v ${TOOL} ${PREFIX}
install -v ${TOOL}.svg ${ICON}
install -v ${TOOL}.desktop ${DESKTOP}
chmod +x -v ${PREFIX}/${TOOL}
echo ${maron}"/!\ Ne pas oublier d'installer zenity (indispensable)."${normal}
echo ${maron}"/!\ Ne pas oublier d'installer xclip  (optionnel)."${normal}
exit 0
