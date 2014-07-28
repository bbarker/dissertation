#!/bin/sh


# For useful info see:
# http://tex.stackexchange.com/questions/57743/how-to-write-a-and-other-umlauts-and-accented-letters-in-bibliography

# Fix Norse \O's, remove extra braces:
perl -pi -e 's/(\\[oOI])([^a-zA-Z])/{\1}\2/g' library.bib 
# Could improve by using something more sophisticated than a true regex:
perl -pi -e 's/{{3}(\\[oOI])}{3}([^a-zA-Z])/{\1}\2/g' library.bib 
perl -pi -e 's/{{2}(\\[oOI])}{2}([^a-zA-Z])/{\1}\2/g' library.bib 

# Fix accent marks:
perl -pi -e 's/(\\["\''`^~]){([a-zA-Z])}/{\1\2}/g' library.bib 

# Fix specfic control sequences:
perl -pi -e 's/\\aa\s/{\\aa}/g' library.bib 

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# remove file fields since this varies from system to system
# and will cause git troubles:
perl -pi -e 's/^file.*$//g' library.bib 
