# https://github.com/grafana/grafana-docker/blob/master/Dockerfile
FROM grafana/grafana

RUN apt-get update && apt-get install -y zip unzip supervisor && rm -rf /var/lib/apt/lists/*

#########################################
ENV CONSUL_VERSION 1.2.0

ADD https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip /tmp/consul.zip

RUN unzip -d /bin /tmp/consul.zip && rm -f /tmp/consul.zip && mkdir /etc/consul.d

ADD consul-agent.json /etc/consul/consul-agent.json
#############################################

COPY supervisor.conf /etc/supervisor/conf.d/supervisor.conf
COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

ADD grafana-consul-service.json /etc/consul.d/grafana-consul-service.json
