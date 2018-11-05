#!/bin/bash

# Author: Nick Plucker
# Takes multiple "csv" files and imports it into neo4j

neo4jPath=$1
tmpDir=$2
databaseName=$3

cd $tmpDir

~/neo4j-community-3.4.9/bin/neo4j-admin import --database=$databaseName --nodes="RunConfigurations_Entity.csv,SingleError_Entity.csv, TotalError_Entity.csv,Gene_Entity.csv, Individual_Entity.csv" --relationships="Individual_Gene_Edge.csv, Individual_TotalError_Edge.csv, Inherited_Gene_Edge.csv, ParentOf_Edge.csv, RunConfigurations_Individual_Edge.csv, TotalError_SingleError_Edge.csv"
