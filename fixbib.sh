#!/bin/sh

# Fix Norse \O's :
perl -pi -e 's/(\\[oO])([^a-zA-Z])/{\1}\2/g' library.bib 

# remove file fields since this varies from system to system
# and will cause git troubles:
perl -pi -e 's/^file.*$//g' library.bib 
