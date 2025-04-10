#!/bin/bash

INFO=$(df -h / | grep -v "Filesystem" | tr -s ' ')
TOTAL=$(echo "$INFO" | cut -d' ' -f2)
USED=$(echo "$INFO" | cut -d' ' -f3)
FREE=$(echo "$INFO" | cut -d' ' -f4)
PERCENT=$(echo "$INFO" | cut -d' ' -f5)

# Au lieu d'écrire dans un fichier, on imprime le résultat JSON
echo "{\"total_storage\": \"$TOTAL\", \"used\": \"$USED\", \"free\": \"$FREE\", \"percent\": \"$PERCENT\"}"
