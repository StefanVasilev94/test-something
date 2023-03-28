#!/bin/bash

# Set the new value to be added to the workload array
new_workload=$1
repo_name=$2
git_token=$3

## clone repo
git clone https://oauth2:$git_token@github.com/StefanVasilev94/$repo_name

if [ ! -d "./$repo_name" ] 
then
    echo "Failed to retrieve $repo_name" 
    exit 1 
fi

cd $repo_name

# Set the name of the YAML file
yaml_file="workload.yml"

# Adds the new value to the workload array
yq e ".jobs.terraform.strategy.matrix.workload += [\"$new_workload\"]" -i "$yaml_file"