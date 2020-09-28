# sonerqube-dotnet
    quick and dirty "solution" for running sonarqube in Github Actions and drone.io.
## Usage: 

### Github:

<pre><code>
steps:
      - name: My first step
        uses: docker://ravndal/sonarqube-dotnet:latest
</code></pre>

### drone.io

<pre><code>
- name: code-analysis
  image: ravndal/sonarqube-dotnet:latest
  environment:
    sonar_token:
      from_secret: sonar_token
    sonar_url:
      from_secret: sonar_url
    sonar_name:
      from_secret: sonar_name
</code></pre>