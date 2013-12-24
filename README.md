[![Build Status](https://travis-ci.org/riklund/rltest.png)](https://travis-ci.org/riklund/rltest)

#RLtest
A default setup for quickly getting some basic tests to a project. 

##Installation
Clone the repository, in a subdirectory (note! it should be placed INSIDE a subdirectory, which means two levels down). Example:

	  /path/to/your/project

means that you should create 

	  /path/to/your/project/test

and do a 

	cd test

and thereafter clone into that directory. Optionally, more sublevels may be chosen. 

After cloning, do

	  cd RLtest
	  ./setup.sh

and follow the instructions. You will need to do some manual makefile editing to make it fit your project.