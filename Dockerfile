FROM mcr.microsoft.com/dotnet/core/sdk:3.1

RUN apt-get update && apt-get install -y openjdk-11-jdk

RUN dotnet tool install -g dotnet-sonarscanner

ENV PATH="${PATH}:/root/.dotnet/tools"

ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]