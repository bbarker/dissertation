#!/bin/sh

#This script isn't needed if fixbib.sh is run before bibtex.

perl -pi -e 's/(\\[oOI] )([^a-zA-Z])/\1\\ \2/g' $1
