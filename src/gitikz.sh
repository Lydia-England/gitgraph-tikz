#!/bin/bash

git log --pretty=%h»¦«%s»¦«%aN»¦«%aE»¦«%aD -n 5 | lines | split column "»¦«" commit subject name email date > git.log

# run file to create and save
# delete initial log file
# exit message 

