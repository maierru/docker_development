FROM alpine:3.5

RUN  apk update \
  && apk add rsyslog sudo \
  && adduser -u 1000 -G wheel -D maier \
  && echo "maier ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/maier \
  && chmod 0440 /etc/sudoers.d/maier \
  && rm -rf /var/cache/apk/*

ADD rsyslog.conf /etc/rsyslog.conf
COPY ./rsyslog.d /etc/rsyslog.d
EXPOSE 514 514/udp

RUN chgrp -R wheel /var/log && chmod -R 775 /var/log
USER 1000

ENTRYPOINT ["sudo", "rsyslogd", "-n" ]
