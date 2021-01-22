#!/bin/sh

# Creation of user and password with a random pass
# Genrate biclef for user

echo -e "\nCreation of current user and biclef ...\n"

account="ewagner amet alaroche tmaurice cmuller hjulien jpasquier mpires gbernard clapresse rpirouet jbonnet llamoureux hadler"

for user in $account; do

  # Creation of user

  adduser $user
  pass=$(cat /dev/urandom | tr -cd 'a-z0-9!#&' | head -c 15; echo)
  echo $pass | passwd --stdin $user >& /dev/null
  echo $user : $pass >> pass.txt
  echo Account '"'$user'"' have been created with password : $pass

  # Generation of biclef

  mkdir /home/$user/.ssh
  passphrase=$(cat /dev/urandom | tr -cd 'a-z0-9!#&' | head -c 25; echo)
  ssh-keygen -t rsa -f /home/$user/.ssh/id_rsa -q -P $passphrase
  echo $user : $passphrase >> passphrase.txt
  echo biclef created for user : '"'$user'"' with passphrase : $passphrase
  echo -e "-----"

done

# Create group

echo -e "-----------------------\n\nCreation of current group ...\n"

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
