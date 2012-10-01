#!/bin/sh
#
# A very simple install script.
# 

# where binaries will be installed
BINPATH=/usr/local/bin/

# where manpages will be installed
MANPATH=/usr/local/man/

##
## end of user configurable items
##

BINS='diary'
MAN1='diary.1'

echo
echo Installing diary:
echo
echo " executables     : $BINPATH"
echo " manual pages    : $MANPATH"
echo
echo Press enter to continue, or ctrl-c to exit.
read

[ -d $BINPATH ] || mkdir -p $BINPATH
install -m 0755 $BINS $BINPATH

[ -d $MANPATH/man1 ] || mkdir -p $MANPATH/man1
install -m 0755 $MAN1 $MANPATH/man1

echo
echo Installation successful.
echo
