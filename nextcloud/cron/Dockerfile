FROM debian:stretch-slim

RUN apt-get update && apt-get -y install cron curl

ADD crontab /etc/cron.d/tasks

CMD ["cron", "-f"]
