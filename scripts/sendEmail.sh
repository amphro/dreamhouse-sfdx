#!/bin/bash

DISPLAY_USER_JSON=$(sfdx force:user:display --json)
echo $DISPLAY_USER_JSON
DISPLAY_URL_JSON=$(sfdx force:org:open --urlonly --json)
echo $DISPLAY_URL_JSON

sfdx force:apex:execute -f scripts/sendEmail.apex