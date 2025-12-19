#!/bin/bash
# set -x Debug mode 
#First test
echo "Hello scripting is fun :) "

#Use variables
echo " "
echo "===============Use variable"
MY_VARIABLE="OUI"
echo "I’m improving my basic ${MY_VARIABLE} skills" 

#Conditions if/elif/else
echo " "
echo "===============if condition"
if [ "MY_VARIABLE" = "bash" ]
then
  echo "continue to learn ..."
elif [ "MY_VARIABLE" = "toto" ]
then
  echo "check you condition."
else
  echo "continue..."
fi  

#Conditions Loop for
echo " "
echo "===============Loop for and if condition"
for ITEMS in Green Black Yellow
do
  echo "Colors : $ITEMS "
done 

#Conditions Loop for and if condition
COLORS="Green Black Yellow"
for ITEMS in ${COLORS}
do
  echo " "
  echo "-----"
  if [ "$ITEMS" = "Red" ]
  then
    echo "Colors : $ITEMS "
    echo "The red colors is in the list"
  elif [ "$ITEMS" = "Yellow" ]
  then
    echo "Colors : $ITEMS "
    echo "The yellow colors is in the list"
  else
    echo "The list doesn’t contain the colors present in the condition"
  fi
  
done

#Use parameter simple example
echo " "
echo "===============Parameter"
FIRST_NAME=$1
LAST_NAME=$2

#Get parameters
echo "First name: ${FIRST_NAME}"
echo "Last name: ${LAST_NAME}"

echo " "
echo "--Get the list length --"
LENGTH=$(printf '%s\n' "$@" | wc -l)
echo "The length :${LENGTH}"

echo "--Other way to get the list length --"
echo "The length :$#"

#Get paramters as list and parse each element
echo " "
echo "--Parsin list v2: --"
INDEX=1
for ITE in "$@"
do
    if [ "$INDEX" -eq 2 ] 
    then
        echo "$ITE"
        break
    fi

    INDEX=$((INDEX + 1))
done


#Get paramters as list and parse each element
echo " "
echo "--Parsin list v1: --"
for ITE in "$@"
do
  echo "$ITE"
done


