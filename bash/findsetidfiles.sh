#!/bin/bash
#
# this script generates a report of the files on the system that have the setuid permission bit turned on
# it is for the lab1 exercise
# it uses the find command to find files of the right type and with the right permissions, and an error redirect to
# /dev/null so we do not get errors for inaccessible directories and files
# the identified files are sorted by their owner

# Task 1 for the exercise is to modify it to also find and display the setgid files in a second listing
# The second listing should display after the setuid file list, and be formatted similar to the
# setuid file list including having a title
# use the find command to find files of the right type and with the right permissions, and an error redirect to
# /dev/null so we do not get errors for inaccessible directories and files
# the identified files should be sorted by their group

# Task 2 for the exercise is to modify it to also display the 10 largest regular files in the system, sorted by their sizes
# The listing should only have the file name, owner, and size in MBytes and be displayed after the listings of
# setuid and setgid files and should have its own title
# use the find command to generate the list of files with their sizes, with an error redirect to /dev/null
# use cut or awk to display only the output desired

echo "Setuid files:"
echo "============="
find / -type f -executable -perm -4000 -ls 2>/dev/null | sort -k 3
echo ""

# commands to display a second title
# find command modified as needed
# sort command to sort files appropriately

# commands to display a third title
# commands to make a list of the 10 biggest files
# sort/ format whatever to display the list properly

echo "==========Task1============"
##heading for setgid files
echo "Setgid files:"
echo "============="

##for  setting  setgid files 2000 permission is required
find / -type f -executable -perm -2000 -ls 2>/dev/null | sort -k 3
echo ""

echo "==========Task2================"
echo "Sorting 10 largest files"
###the 10 largest regular files in the system, sorted by their sizes, listing have file name ownerand size in MB
##find is used to list files with sizes and 2> is used for redirecting error to dev/null and head is used for listing top 10 files and awk is used for desired output
find / -type f -exec ls -l --block-size=MB {} + 2>/dev/null | sort -rh -k 5 | head -n 10 | awk '{print $5, $3, $9}'
echo""