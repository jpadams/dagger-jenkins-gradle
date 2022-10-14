#!/bin/bash

#set -x

RUN="/usr/local/bin/dagger do -f ./queries.graphql"

WORKFS=$($RUN TomcatWorkdir | jq -r '.host.workdir.read.directory.id')

TOMCAT=$($RUN --set "workfs=$WORKFS" BuildTomcat)

echo $TOMCAT | jq -r '.. | .contents? | select(. != null)'
