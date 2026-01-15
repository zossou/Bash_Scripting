#!/bin/bash
###############################Exercise 1
#Get exit information
MY_MSG="This script will exit with a 0 exit status"

return_msg(){
    # Variable Content
    echo "$MY_MSG"
}

# running function
return_msg

# Get exit status
echo "$?"

###############################Exercise 2

First_ARG="$1"
check_file_directory_or_other(){
    if [ -f "$First_ARG" ]
      then
      echo "$First_ARG is an file"
      return 0
    elif [ -d "$First_ARG" ]
      then
      echo "$First_ARG is an Directory"
      return 1
    else
      echo "$First_ARG is not a valid file or directory."
      return 2
    fi    
}
check_file_directory_or_other
# Get exit status
echo "$?"

###############################Exercise 3
OUTPUT_CMD="cat /etc/shadow"
check_cmd(){
#run command
$OUTPUT_CMD

    if [ "$?" -eq 0 ]
    then
      echo "Command succeeded"
    elif [ "$?" -ne 0 ]
    then
      echo "Command failed"
    fi
}

check_cmd
echo "$?"