#!/bin/bash

#set -x

RUN="/usr/local/bin/dagger do -f ./queries.graphql"

JUNIT=$($RUN JUnitExample | jq -r '.git.branch.tree.directory.id')

GRADLE=$($RUN --set "workfs=$JUNIT" --set "gradle=./gradlew" Gradle)

echo $GRADLE | jq -r '.. | .contents? | select(. != null)'
