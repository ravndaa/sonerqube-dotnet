#!/bin/bash -l


# -d 

if [ -z "$sonar_token" ]
then
    exit 1
fi

if [ -z "$sonar_url" ]
then
    exit 1
fi

if [ -z "$sonar_name" ]
then
    exit 1
fi

export PATH="${PATH}:/root/.dotnet/tools"

sh -c "dotnet sonarscanner begin /k:"$sonar_name" /d:sonar.host.url="$sonar_url" /d:sonar.login="$sonar_token""
sh -c "dotnet build"
sh -c "dotnet sonarscanner end /d:sonar.login="$sonar_token""
