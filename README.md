# SONARQUBE - CLI SCANNER

The sonar-scanner is the scanner to use when there is no specific scanner for your build system.

## Build a docker image

```
docker build -t dascencio/sonar-scanner-cli:4.2 .
```

## Run a docker container

```
docker run --rm -it -e SONARQUBE_URL=http://mysonarqube.com dascencio/sonar-scanner-cli:4.2 bash

sonar-scanner -D [arguments]
```

# References

* [sonarqube site](https://www.sonarqube.org/)
* [sonarqube docs](https://docs.sonarqube.org/latest/)
