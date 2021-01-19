# TP1 : Sécurité des systèmes d’exploitations Linux
## Manipulation des droits d’accès au système de fichiers

## Classe : B3B
## Élèves : Emma Durand **[@emmadrd912](https://github.com/emmadrd912)** et Pierre Ceberio **[@PierreYnov](https://github.com/PierreYnov)** 

![](https://waytolearnx.com/wp-content/uploads/2018/08/QCM-Linux.jpg)

# Sommaire 

- [Le Lab](#le-lab)
- [Préparation et durcissement du système d’exploitation](##pr%C3%A9paration-et-durcissement-du-syst%C3%A8me-dexploitation)
    - [I. Installation du système d’exploitation](##i-installation-du-syst%C3%A8me-dexploitation)
    - [II. Sécurisation de l’administration du serveur](#ii-s%C3%A9curisation-de-ladministration-du-serveur)
- [Configuration et durcissement du rôle serveur de fichiers](#configuration-et-durcissement-du-r%C3%B4le-serveur-de-fichiers)
    - [I. Préparation du dossier /partage](#i-pr%C3%A9paration-du-dossier-partage)
    - [II. Préparation des comptes utilisateurs](#ii-pr%C3%A9paration-des-comptes-utilisateurs)
    - [III. Préparation de la structure des répertoires](#iii-pr%C3%A9paration-de-la-structure-des-r%C3%A9pertoires)


## Le lab

- 1 Linux Centos 7 minimal

## Préparation et durcissement du système d’exploitation

### I. Installation du système d’exploitation

    install linux centos 7 minimal
    only cli
    seulement paquet utile installe
    avoir dernier correcif de secu
    avoir une partition dedié avecc dessus le dossier monté /partage  ( activer l'option ACL sur ce montage)

### II. Sécurisation de l’administration du serveur

mettre en oeuvre ces mesures : 

- administration du serv vie SSH (en suivant ces reco https://www.ssi.gouv.fr/guide/recommandations-pour-un-usage-securise-dopenssh/)
- chaque personne pourra etablir une session via son compte user et une biclef sécurisé pour acceder au systeme de fichier

- flux reseau entrant sortant doit etre filtré ( 80 443 22 avec ufw ?)


## Configuration et durcissement du rôle serveur de fichiers

### I. Préparation du dossier /partage

dossier partage devront etre sur la partition /partage avec les fonctionnalité ACL posix

### II. Préparation des comptes utilisateurs

créer un script shell qui :

- crée des comptes
- leurs biclfé 
- des groupes users
- un mdp fort 
- passphrase pour la biclef

(liste des comptes à créer en annexe)

### III. Préparation de la structure des répertoires

créer la structure des dossiers partagés sur le serv en regardant la structure en annexe

utilisez ACL POSIX pour parametrer les permissions sur les repertoire ( en suivant la liste de controle d'accès)

voir https://www.usenix.org/legacy/publications/library/proceedings/usenix03/tech/freenix03/full_papers/gruenbacher/gruenbacher_html/

https://lea-linux.org/documentations/Gestion_des_ACL
