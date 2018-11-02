#!/bin/bash

# Author: Nick Plucker
# Takes an "edn" file created from Clojush and creates a Neo4j database
# Usage: Run the following at the top of the project
#        ./bin/clojush-to-neo4j <path to edn file>

ednFile=$1
tmpDir=$(mktemp -d)

# Make a tmp directory to store csv files created from data munger
printf "Making tmp directory...\n"
tmpDir=$(mktemp -d)

if [ $? -eq 0 ]; then
    printf "tmp directory successfully made\n"
else
    printf "tmp directory creation failed!\n"
fi

# Convert the edn file to csv
printf "Converting edn to csv...\n"
./bin/edn-to-csv.sh $ednFile etc/edn-to-csv.jar $tmpDir

printf "Deleting tmpDir...\n"
rm -rf tmpDir

printf "Done.\n"
