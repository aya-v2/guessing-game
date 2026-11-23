#!/usr/bin/env bash

count_files() {
  ls -1 | wc -l
}

answer=$(count_files)
guess=-1

echo "How many files are in the current directory?"

while [[ $guess -ne $answer ]]; do
  read -r -p "Enter your guess: " guess

  if [[ ! "$guess" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid number."
  elif [[ $guess -lt $answer ]]; then
    echo "Too low! Try again."
  elif [[ $guess -gt $answer ]]; then
    echo "Too high! Try again."
  else
    echo "Congratulations! You guessed the right number of files."
  fi
done
