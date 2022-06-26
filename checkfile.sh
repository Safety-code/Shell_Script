#!/bin/bash
#checking if either a directory or file exists
#
item_name=$HOME/sentinel
echo 
echo "The item being checked is: $item_name"

if [ -e $item_name ]; then #item does exists
    echo "The item, $item_name, does exists"
    echo "But is it a file?"
    echo
    if [ -f $item_name ]; then # item is a file
        echo "Yes, $item_name is a file"
    #
    else # item is not a file
        echo "No, $item_name is not a file"
    fi
else # item does not exist
    echo "The item, $item_name, does not exist"
    echo "Nothing to Update..."
fi


