FROM centos
RUN yum -y install perl-Switch perl-DateTime perl-Sys-Syslog perl-LWP-Protocol-https perl-Digest-SHA 
RUN yum -y install zip unzip curl

RUN curl https://aws-cloudwatch.s3.amazonaws.com/downloads/CloudWatchMonitoringScripts-1.2.2.zip -O

RUN unzip CloudWatchMonitoringScripts-1.2.2.zip
RUN rm CloudWatchMonitoringScripts-1.2.2.zip

COPY ./etrypoint.sh /
COPY ./awscreds.conf /aws-scripts-mon/

ENTRYPOINT /etrypoint.sh