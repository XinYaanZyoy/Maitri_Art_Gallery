#!/bin/bash
echo Start of Entry;
echo $'\n'"git status: $(git status)"$'\n';
DIR="arts";
status=false;
if [ -d "$DIR" ]; then
    git log -1 --name-only --oneline > changes
    mapfile -t lines < changes
        for i in "${!lines[@]}"; do
           printf '%d %s' "$i" "${lines[i]}"
        done
else
    echo "$DIR doesn't exist!";
fi
echo End Of Entry;
