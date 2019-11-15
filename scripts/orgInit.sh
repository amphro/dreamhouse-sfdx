#!/bin/bash

DURATION=7

if [ "$#" -eq 1 ]; then
  sfdx force:org:create -a dreamhouse -s -f config/project-scratch-def.json -d $DURATION username=$1
else
  sfdx force:org:create -a dreamhouse -s -f config/project-scratch-def.json -d $DURATION
fi

sfdx force:source:push
sfdx force:user:permset:assign -n dreamhouse
sfdx force:data:tree:import -p data/sample-data-plan.json

# Only open when a user is running the script, not in CI
if [ "$GITHUB_WORKFLOW" == "" ]; then
  sfdx force:org:open -p /lightning/page/home
fi

echo "Org is set up"
