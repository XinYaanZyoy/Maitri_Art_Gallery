#!/bin/bash
echo Start of Entry;
echo $'\n'"git status: $(git status)"$'\n';
DIR="arts";
status=false;
if [ -d "$DIR" ]; then
    git log -1 --name-only --oneline > changes
    count=0
    while read -r line; do
       printf '%d %s\n' "$count" "${line*//}"
       (( count++ ))
    done < changes
else
    echo "$DIR doesn't exist!";
fi
echo End Of Entry;
