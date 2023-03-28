#!/bin/bash

# Set the new value to be added to the workload array
new_workload=$1

# Set the name of the YAML file
yaml_file="workload.yml"

# Adds the new value to the workload array
yq e ".jobs.terraform.strategy.matrix.workload += [\"$new_workload\"]" -i "$yaml_file"