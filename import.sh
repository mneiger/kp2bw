#!/bin/bash

set -x

# quel compte on utilise pour bitwarden, il faut avoir connectle le client bw au serveur
export BITWARDENCLI_APPDATA_DIR=~/.config/Bitwarden\ CLI


# Import d'un fichier keepass "privé"
KEE="Fichier Keepass"
# on suppose le meme mdp pour 
PWK=PAssword Keepass
PWV=Password Vaultwarden

kp2bw -kppw "$PWK" -bwpw "$PWV" -path2name -path2nameskip 10 -y  $KEE

# Import d'un fichier keepass partagé
ORG=uuid de l'organisation
KEE="Feefier Keepass"
kp2bw -kppw "$PWK" -bwpw "$PWV" -bworg $ORG -bwcoll auto -path2name -y $KEE

