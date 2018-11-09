#!/bin/bash

# Author: Nick Plucker
# Takes multiple "csv" files and imports it into neo4j

neo4jPath=$1
tmpDir=$2
databaseName=$3

cd $tmpDir

/mnt/ResearchSpace/neo4j-community-3.2.6/bin/neo4j-admin import --database=$databaseName --nodes="RunConfigurations_Entity.csv" --nodes="SingleError_Entity.csv" --nodes="TotalError_Entity.csv" --nodes="Gene_Entity.csv" --nodes="Individual_Entity.csv" --relationships="Individual_Gene_Edge.csv" --relationships="Individual_TotalError_Edge.csv" --relationships="Inherited_Gene_Edge.csv" --relationships="ParentOf_Edge.csv" --relationships="RunConfigurations_Individual_Edge.csv" --relationships="TotalError_SingleError_Edge.csv"
