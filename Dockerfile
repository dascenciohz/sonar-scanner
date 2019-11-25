FROM openjdk:11.0.5

LABEL maintainer="Daniel Ascencio <daniel.ascencio.hz@gmail.com>"

ENV SONARQUBE_URL="http://localhost:9000"

ARG SONARQUBE_SCANNER_VERSION="4.2.0.1873-linux"
ARG SONARQUBE_SCANNER_URL="https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SONARQUBE_SCANNER_VERSION}.zip"

RUN curl --insecure -o sonarqube-scanner.zip -L ${SONARQUBE_SCANNER_URL} \
    && unzip sonarqube-scanner.zip \
    && mv sonar-scanner-${SONARQUBE_SCANNER_VERSION} /usr/lib/sonar-scanner \
    && ln -s /usr/lib/sonar-scanner/bin/sonar-scanner /usr/local/bin/sonar-scanner \
    && rm -f sonarqube-scanner.zip

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]