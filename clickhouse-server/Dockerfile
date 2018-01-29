FROM yandex/clickhouse-server:1.1

# FROM ubuntu:16.04

# ENV repository="deb https://repo.yandex.ru/clickhouse/xenial/ dists/stable/main/binary-amd64/"
# ENV version=\*

# RUN apt-get update && \
#     apt-get install -y apt-utils apt-transport-https tzdata && \
#     mkdir -p /etc/apt/sources.list.d && \
#     echo $repository | tee /etc/apt/sources.list.d/clickhouse.list && \
#     apt-get update && \
#     apt-get install --allow-unauthenticated -y clickhouse-server-common=$version
#     # rm -rf /var/lib/apt/lists/* /var/cache/debconf && \
#     # apt-get clean

# # RUN sed -i 's,<listen_host>127.0.0.1</listen_host>,<listen_host>::</listen_host>,' /etc/clickhouse-server/config.xml
# RUN chown -R clickhouse /etc/clickhouse-server/

# USER clickhouse
# EXPOSE 9000 8123 9009
# # VOLUME /var/lib/clickhouse

# # ENV CLICKHOUSE_CONFIG /etc/clickhouse-server/config.xml

# USER root
# VOLUME /opt/clickhouse

# RUN apt-get install --allow-unauthenticated -y clickhouse-client wget make software-properties-common git \
# # RUN mkdir -p /var/cache/apt/archives/partial \
#  # && touch /var/cache/apt/archives/lock \
#  # && chmod 640 /var/cache/apt/archives/lock \
#  # && apt-get clean \
#  # && echo $repository | tee /etc/apt/sources.list.d/clickhouse.list \
#  # && apt-get update \
#  # && add-apt-repository ppa:longsleep/golang-backports \
#  # && apt-get install --allow-unauthenticated -y  \
#  && git clone https://github.com/lomik/graphite-clickhouse.git


# RUN wget https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz \
#   && tar -C /usr/local -xzf go1.8.3.linux-amd64.tar.gz \
#   && rm -rf go1.8.3.linux-amd64.tar.gz

# ENV PATH="/usr/local/go/bin:${PATH}"

# RUN cd graphite-clickhouse \
#  && make submodules \
#  && make \
#  && pwd

# RUN git clone https://github.com/lomik/carbon-clickhouse.git \
#   && cd carbon-clickhouse \
#   && make submodules \
#   && make \
#   && pwd \
#   && ls -la

# RUN mv /graphite-clickhouse/graphite-clickhouse /bin/ \
#  && mv /carbon-clickhouse/carbon-clickhouse /bin/ \
#  && rm -rf /var/lib/apt/lists/* /var/cache/ \
#  && mkdir /etc/clickhouse-server/conf.d \
#  && mkdir /etc/clickhouse-server/users.d

# COPY clickhouse.xml /etc/clickhouse-server/
# COPY custom-config.xml /etc/clickhouse-server/conf.d/
# # graphouse
# COPY graphite_rollup.xml /etc/clickhouse-server/conf.d/
# ###########
# COPY custom-users.xml /etc/clickhouse-server/users.d/
# COPY users.xml /etc/clickhouse-server/users.xml

# ADD entrypoint.sh /
# RUN chmod +x /entrypoint.sh
# ENV CLICKHOUSE_CONFIG /etc/clickhouse-server/config.xml

# EXPOSE 9000
# # ENTRYPOINT exec /usr/bin/clickhouse-server --config=${CLICKHOUSE_CONFIG}
# ENTRYPOINT ["/entrypoint.sh"]