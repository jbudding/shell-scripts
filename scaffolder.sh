#!/bin/bash
#
# Always set a list of variables with the names and list of things you want to do or change at
# the top of your Shell Script.  Your script will quickly get so long you will not be able
# to see where in your script you need to change when it gets too long. - @jbudding
$DIRS_TO_CREATE="css scss img scripts design-docs"

cd ~/Desktop/;

echo "in" `pwd`;

mkdir scaffold; 

cd ~/Desktop/scaffold;

echo "in" `pwd`;

touch index.html;

mkdir $DIRS_TO_CREATE
