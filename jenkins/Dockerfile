FROM jenkins/jenkins:2.440.2-lts-jdk17

USER root

RUN apt-get update && apt-get install -y apt-transport-https \
       ca-certificates curl gnupg2 \
       software-properties-common \
       ruby
RUN curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
RUN echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
    $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
    tee /etc/apt/sources.list.d/docker.list > /dev/null
RUN apt-get update && apt-get install -y docker-ce-cli

RUN mkdir -p /var/jenkins_home
RUN chown -R jenkins:jenkins /var/jenkins_home

USER jenkins

COPY --chown=jenkins:jenkins plugins.yml /usr/share/jenkins/plugins.yml
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/plugins.yml

COPY --chown=jenkins:jenkins jenkins-config.yaml /var/casc_configs/jenkins-config.yaml
ENV  CASC_JENKINS_CONFIG=/var/casc_configs/jenkins-config.yaml