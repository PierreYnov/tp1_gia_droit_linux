#!/bin/sh

# Create user 

user =  'ewagner'
adduser $user
pass=$(cat /dev/urandom | tr -cd 'a-z0-9!-_#&' | head -c 12; echo)
usermod --password $pass $user

adduser amet

adduser alaroche

adduser tmaurice 

adduser cmuller

adduser hjulien

adduser jpasquier

adduser mpires

adduser gbernard

adduser clapresse

adduser rpirouet

adduser jbonnet

adduser llamoureux

adduser hadler

# create group

groupadd Direction
groupadd Pilotage
groupadd ServiceComptable
groupadd ServiceInformatique
groupadd ServiceLogistique

# add user to group

usermod -a -G Direction,Pilotage ewagner 
usermod -a -G Pilotage, ServiceComptable amet
usermod -a -G ServiceComptable alaroche
usermod -a -G ServiceComptable tmaurice
usermod -a -G ServiceInformatique,Pilotage cmuller
usermod -a -G ServiceInformatique hjulien
usermod -a -G ServiceInformatique jpasquier 
usermod -a -G ServiceInformatique mpires
usermod -a -G Pilotage,ServiceLogistique gbernard
usermod -a -G ServiceLogistique clapresse
usermod -a -G ServiceLogistique rpirouet
usermod -a -G ServiceLogistique jbonnet
usermod -a -G ServiceLogistique llamoureux
usermod -a -G ServiceLogistique hadler

