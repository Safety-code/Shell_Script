#!/bin/bash
#testing file dates
#
if [ empt_file.sh -nt check_read_access.sh ];
then
    echo "The empty_file.sh is newer than writable.sh..."
else
    echo "The check_read_access.sh file is newer than the empty_file.sh file..."
fi

sleep 1

if [ file_writable.sh -ot empt_file.sh ];
then
    echo "The file_writable.sh is is older than the empty_file.sh..."
fi
