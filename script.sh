#!/bin/sh

# Create user and password with a random pass

echo -e "\nCreation of current user ...\n"

account="ewagner amet alaroche tmaurice cmuller hjulien jpasquier mpires gbernard clapresse rpirouet jbonnet llamoureux hadler"

for user in $account; do
  adduser $user
  pass=$(cat /dev/urandom | tr -cd 'a-z0-9!#&' | head -c 12; echo)
  usermod --password $pass $user
  echo $user : $pass >> pass.txt
  echo Account '"'$user'"' have been created with password : $pass
done

# Create group

echo -e "\n-----------------------\n\nCreation of current group ...\n"

group="Direction Pilotage ServiceComptable ServiceLogistique ServiceInformatique"

for groups in $group; do
  groupadd $groups
  echo Group '"'$groups'"' have been created.
done

# assign all user to a

echo -e "\n-----------------------\n\nAssigning all user to a group ...\n"

usermod -a -G Direction,Pilotage ewagner
usermod -a -G Pilotage,ServiceComptable amet
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

echo -e "OK.\n"

# create biclef and random passphrase

echo -e "\n-----------------------\n\nCreation of current biclef ...\n"

# A tester :

# passphrase=$(cat /dev/urandom | tr -cd 'a-z0-9!-_#&' | head -c 15; echo)
#
# ssh-keygen -t rsa -f /home/oracle/.ssh/id_rsa -q -P "passphrase"
