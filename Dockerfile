FROM jenkins/jenkins:lts

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

ENV CASC_JENKINS_CONFIG /var/jenkins_home/my_marvin.yaml

ENV USER_CHOCOLATEEN_PASSWORD titi

COPY plugins.txt /usr/share/jenkins/ref/

RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

COPY my_marvin.yml /var/jenkins_home/my_marvin.yaml

COPY job_dsl.groovy /var/jenkins_home/job_dsl.groovy