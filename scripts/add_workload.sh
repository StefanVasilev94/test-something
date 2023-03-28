#!/bin/bash

# Set the new value to be added to the workload array
new_workload=$1
repo_name=$2
git_token=$3
new_branch_name=$4

# git checkout -b $new_branch_name

# Set the name of the YAML file
yaml_file="workload.yml"

# Adds the new value to the workload array
yq e ".jobs.terraform.strategy.matrix.workload += [\"$new_workload\"]" -i "$yaml_file"

# git config --global user.email "workload_bot@conclusion.com"
# git config --global user.name "Workload Bot"
# git add .
# git commit -m "Added $new_workload"
# git push origin $new_branch_name