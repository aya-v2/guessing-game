#!/usr/bin/env bash

count_files() {
  ls -1A | wc -l
}

target=$(count_files)
guess=-1

while [[ $guess -ne $target ]]; do
  echo "How many files are in the current directory?"
  read -r -p "Enter your guess: " guess

  if [[ ! "$guess" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid number and try again."
  elif [[ $guess -lt $target ]]; then
    echo "Your guess is too low. Try again."
  elif [[ $guess -gt $target ]]; then
    echo "Your guess is too high. Try again."
  else
    echo "Congratulations! You guessed the correct number of files."
  fi
done
