#!/bin/bash

#
#author=kimbethwel@gmail.com
#
#
# the | symbol means pipe the input of this command to the input of the next command.

#So we read the file weather.dat, pipe this into awk and select column 1(date of month),
# and find the different between column 2 and 3. Now we have two rows. The date , and the difference

#we then sort these 2 columns based on the second column( the difference). now we have sorted rows with 2 colums

# we use the head command to show only the first entry.

#thank you

cat weather.dat | awk '{print $1"\t" $2-$3}' | sort -gr -k 2,2 | head -n 1