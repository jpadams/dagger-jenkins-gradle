#!/bin/bash

RUN="dagger do -f ./queries.graphql"
CACHE=$($RUN Cache | jq -r '.cacheFromTokens.id')
WORKFS=$($RUN Workdir | jq -r '.host.workdir.read.id')

GRADLE=$($RUN --set "workfs=$WORKFS" --set "cachevol=$CACHE" Gradle | jq -r '.. | .contents? | select(. != null)')
echo $GRADLE 
