#!/bin/sh
GITHUB_USER="CristianRaguay"
echo $GITHUB_USER
curl -o cris.json https://api.github.com/users/$GITHUB_USER
ID=$(cat cris.json | jq '.id')
CREATE=$(cat cris.json | jq '.created_at')
MSG='Hola '$GITHUB_USER' User ID: '$ID' Cuenta fue creada el: '$CREATE
echo $MSG
DATE=$(date +%d%m%y%H%M%S)
echo $DATE
mkdir -p /tmp/$DATE
echo $MSG > /tmp/$DATE/saludos.log 
