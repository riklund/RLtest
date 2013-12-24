#!/bin/bash
function Main()
{
	CheckRequirements
	PrintInitialInstructions
	PopulateTestDir
	echo "Setup complete."
	echo "Don't forget to customize makefiles etc to fit."
}


function PopulateTestDir()
{
	mkdir -p $UDIR/testsamples
	cp -r template/* $UDIR/
	sed -i -e "s,@MAINUDIR@,$UDIR,g" $UDIR/makefile
}


function PrintInitialInstructions()
{
	echo "This is a setup script to help you configuring the unit tests as fast as possible."
	echo "Please enter the directory in which to place the unit tests. Common choice is the parent directory."
	echo "To this directory, files and a makefile will be copied."
	read -p "Unit test directory:" UDIR
	return
	echo "Please enter relative path to the project (where the main makefile is). "
	echo ""
	read -p "Main project path:" MFDIR
	echo -en "\n"
	THISDIR=$(pwd)
}

function CheckRequirements()
{
	#Do some basic checks for dependencies.
	if [ ! -d "template" ]
	then
		echo "Fatal error: directory \"template\" not found."
		exit 1
	fi

	if [ ! -f "template/makefile" ]
	then
		echo "Fatal error: \"template/makefile\" not found."
		exit 2
	fi
}

Main