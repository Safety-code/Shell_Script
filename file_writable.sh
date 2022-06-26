#!/bin/bash
#checking if a file exists and is writable
#
item_name=$HOME/sentinel
echo
echo "The item being checked is: $item_name"
echo
if [ -f $item_name ]; 
then #if item is a file
    echo "Yes, $item_name, is a file"
    echo "But is it writable?"
    #
    if [ -w $item_name ];
    then #$item is writable
        echo "The file $item_name is writable"
        echo "Writing current time to $item_name"
        date +%H%M >> $item_name
    else
        echo "The file $item_name is not writable"
        echo "Unable to write to $item_name"
    fi
else #$item not a file
    echo "No, $item_name is not a file"
fi

        
