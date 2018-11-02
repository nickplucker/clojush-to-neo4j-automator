#!/bin/bash

# Author: Nick Plucker
# Takes an "edn" file and wrangles it to "csv" format
# Usage: Run at top of project directory
#        ./bin/edn-to-csv.sh bin/log7.edn etc/edn-to-csv.jar

ednFile=$1
jarFile=$2
tmpDir=$3

java -cp $jarFile Main $ednFile $tmpDir

# the java program may need to be updated to give proper exit codes
# if an exception or error is thrown
if [ $? -eq 0 ]; then
    printf "  csv files successfully created!\n"
else
    printf "  csv file convert failed!\n"
fi
