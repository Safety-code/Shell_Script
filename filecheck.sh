#!/bin/bash
#checking if a file or directory exists before using it
#
location=/home/safety/bash
file_name="file2.txt"
file2="file1.txt"
#
if [ -e $location ]; 
then #Directory exists
    echo "OK on the: $location directory"
    echo "Now checking on the file, $file_name"
    #
    if [ -e $location/$file_name ];
    then #then file exists
        echo "OK on the filename"
        echo "Updating Current Date...."
        date >> $location/$file_name
        #$location/$file_name << $file1 > file3.txt 
     else #Both files don't exist
        echo "Both files don't exist"
    
    fi
    sleep 2


    #
    #Second test for the second file
    if [ -e $location/$file2 ];
    then # checking if file2 exists
        echo "OK on the second file"
        echo "The second file: $file2 also exists"
        echo "Appending file2 to file_name"
        sudo $location/$file2 >> $location/$file_name
    else # The second file doesn't exist either
        echo "Second file not found"
        echo "Nothing to append"
    fi

else    #Directory doesn't exists
    echo "The $location directory doesn't exist"
    echo "Nothing to update"
fi

