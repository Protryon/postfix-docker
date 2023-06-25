FROM debian:bookworm-slim AS installer
WORKDIR /runtime

RUN apt-get update && apt-get install opendkim=2.11.0~beta2-8 opendkim-tools=2.11.0~beta2-8 ca-certificates curl net-tools procps rsyslog -y && rm -rf /var/lib/apt/lists/*

COPY ./rsyslog.conf /etc/rsyslog.conf
COPY ./start.sh /runtime/start.sh
RUN chmod +x /runtime/start.sh

ENTRYPOINT ["/runtime/start.sh"]