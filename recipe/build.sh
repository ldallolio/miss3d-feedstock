#!/bin/bash
set -e

echo "**************** M I S S 3 D  B U I L D  S T A R T S  H E R E ****************"

cp src/Makefile.inc.gnu64 src/Makefile.inc

echo "MAKEFILE : "
cat ./Makefile

echo "MAKEFILE.INC : "
cat ./src/Makefile.inc

make VERBOSE=1 prefix=$PREFIX/bin F90=$F90
make install

echo "**************** M I S S 3 D  B U I L D  E N D S  H E R E ****************"