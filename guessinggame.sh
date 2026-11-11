#!/usr/bin/env bash

function ask_guess {
    echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
    read guess
}

correct_count=$(ls -A | wc -l)

ask_guess

while [[ $guess -ne $correct_count ]]
do
    if [[ $guess -lt $correct_count ]]
    then
        echo "Votre estimation est trop basse. Essayez à nouveau :"
    else
        echo "Votre estimation est trop élevée. Essayez à nouveau :"
    fi
    read guess
done

echo "Félicitations ! Vous avez deviné le nombre exact de fichiers ($correct_count)."
