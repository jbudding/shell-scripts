#!/bin/bash
#
# Always set a list of variables with the names and list of things you want to 
# do or change at the top of your Shell Script.  Your script will quickly get so
# long you will not be able to see where in your script you need to change when 
# it gets too long. - @jbudding
#
DIRS_TO_CREATE="css scss img scripts design-docs"
INDEX_FILE="index.html"

cd ~/Desktop/

echo "in" `pwd`

# the -p option only creates directory sub path that does not exist.
mkdir -p scaffold 

cd ~/Desktop/scaffold

echo "in" `pwd`


# This says if the file exists don't create / potentially erase it.
if [ -f $INDEX_FILE ]
then
	echo "File $INDEX_FILE already exists, not creating."
else
	touch $INDEX_FILE

	# Optionally add content to the file created.
	echo "<HTML>" >> $INDEX_FILE
	echo "</HTML>" >> $INDEX_FILE
	
fi

# Iterate through list typing an individual command for each dir in the list
for item in $DIRS_TO_CREATE
do 
	echo "Creating $item"
	mkdir -p $item
done


