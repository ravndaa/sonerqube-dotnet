# sonerqube-dotnet
    quick and dirty "solution" for running sonarqube in Github Actions and drone.io.
## Usage: 

### Github:

<code>
steps:
      - name: My first step
        uses: docker://ravndal/sonarqube-dotnet:latest
</code>

### drone.io