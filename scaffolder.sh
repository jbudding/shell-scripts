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

mkdir -p scaffold 

cd ~/Desktop/scaffold

echo "in" `pwd`

if [ -f $INDEX_FILE ]
then
	echo "File $INDEX_FILE already exists, not creating."
else
	touch $INDEX_FILE
	echo "<HTML>" >> $INDEX_FILE
	echo "</HTML>" >> $INDEX_FILE
	
fi

for item in $DIRS_TO_CREATE
do 
	echo "Creating $item"
	mkdir -p $item
done


