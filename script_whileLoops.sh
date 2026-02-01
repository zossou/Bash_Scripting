#!/bin/bash
###############################Exercise 1 : Loops through th data.txt one line at time 
INDEX=0
DATA_NAME="data.txt"

while read LINE || [ -n "$LINE" ]
do
  echo "${INDEX}: ${LINE}"
  ((INDEX++))
done < "$DATA_NAME"

###############################Exercise 2 : Write a shell script that asks the user for the number of lines they would like to display from the data.txt file and display those lines. 
check_user_input_choice() {
  local CHOICE
  read -p "How many lines of Data.txt would you like to see? " CHOICE
  echo "$CHOICE"
}

howmany_line() {
  echo " ==== call function howmany_line ===="
  local INDEX=0
  local MAX_LINES
  local MAX_LINES
  MAX_LINES=$(check_user_input_choice)

  while IFS= read -r LINE && [ "$INDEX" -lt "$MAX_LINES" ]; do
    echo "${INDEX}: ${LINE}"
    ((INDEX++))
  done < data.txt
}

howmany_line


