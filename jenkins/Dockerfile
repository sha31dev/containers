# Base image.
FROM jenkins/jenkins:lts

# Disable setup wizard.
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /usr/share/jenkins/ref/casc.yml

# Copy and install default plugins.
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt

# Copy config.
COPY casc.yml /usr/share/jenkins/ref/casc.yml

# Use root user.
USER root

# Install Docker.
RUN touch dockerinstall
RUN curl https://get.docker.com/ > dockerinstall && chmod 777 dockerinstall && ./dockerinstall

# Install dependencies.
RUN apt install git rsync -y

# Set same entry point as parent image.
ENTRYPOINT ["/bin/tini", "--", "/usr/local/bin/jenkins.sh"]
