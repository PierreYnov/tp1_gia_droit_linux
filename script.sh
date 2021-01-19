#!/bin/sh

# Create user and password with a random pass

user =  'ewagner'
adduser $user
pass=$(cat /dev/urandom | tr -cd 'a-z0-9!-_#&' | head -c 12; echo)
usermod --password $pass $user

user = 'amet'
adduser $user
pass=$(cat /dev/urandom | tr -cd 'a-z0-9!-_#&' | head -c 12; echo)
usermod --password $pass $user

user = 'alaroche'
adduser $user
pass=$(cat /dev/urandom | tr -cd 'a-z0-9!-_#&' | head -c 12; echo)
usermod --password $pass $user

user = 'tmaurice'
adduser $user
pass=$(cat /dev/urandom | tr -cd 'a-z0-9!-_#&' | head -c 12; echo)
usermod --password $pass $user

user = 'cmuller'
adduser $user
pass=$(cat /dev/urandom | tr -cd 'a-z0-9!-_#&' | head -c 12; echo)
usermod --password $pass $user

user = 'hjulien'
adduser $user
pass=$(cat /dev/urandom | tr -cd 'a-z0-9!-_#&' | head -c 12; echo)
usermod --password $pass $user

user = 'jpasquier'
adduser $user
pass=$(cat /dev/urandom | tr -cd 'a-z0-9!-_#&' | head -c 12; echo)
usermod --password $pass $user

user = 'mpires'
adduser $user
pass=$(cat /dev/urandom | tr -cd 'a-z0-9!-_#&' | head -c 12; echo)
usermod --password $pass $user

user = 'gbernard'
adduser $user
pass=$(cat /dev/urandom | tr -cd 'a-z0-9!-_#&' | head -c 12; echo)
usermod --password $pass $user

user = 'clapresse'
adduser $user
pass=$(cat /dev/urandom | tr -cd 'a-z0-9!-_#&' | head -c 12; echo)
usermod --password $pass $user

user = 'rpirouet'
adduser $user
pass=$(cat /dev/urandom | tr -cd 'a-z0-9!-_#&' | head -c 12; echo)
usermod --password $pass $user

user = 'jbonnet'
adduser $user
pass=$(cat /dev/urandom | tr -cd 'a-z0-9!-_#&' | head -c 12; echo)
usermod --password $pass $user

user = 'llamoureux'
adduser $user
pass=$(cat /dev/urandom | tr -cd 'a-z0-9!-_#&' | head -c 12; echo)
usermod --password $pass $user

user = 'hadler'
adduser $user
pass=$(cat /dev/urandom | tr -cd 'a-z0-9!-_#&' | head -c 12; echo)
usermod --password $pass $user

# Create group

groupadd Direction
groupadd Pilotage
groupadd ServiceComptable
groupadd ServiceInformatique
groupadd ServiceLogistique

# assign all user to a group

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

# create biclef and random passphrase
