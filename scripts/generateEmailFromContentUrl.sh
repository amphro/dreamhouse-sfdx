#!/bin/bash

echo "Working with URL $1"
ISSUE_NUMBER=$(basename $1)
echo ::set-output name=issue_number::$ISSUE_NUMBER

USERNAME="ci-$ISSUE_NUMBER@github.amphro.dreamhouse.com"
echo $USERNAME
echo ::set-output name=username::$USERNAME

