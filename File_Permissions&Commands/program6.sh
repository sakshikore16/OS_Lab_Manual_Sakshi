#!/bin/zsh


ls -lh | awk '
BEGIN {
    print "Filename\t\tSize"
    print "---------------------------------"
}
{
    if (NR > 1) { 
        printf "%-20s\t%s\n", $9, $5
    }
}
'

