FROM debian:bookworm-slim AS installer
WORKDIR /runtime

#RUN apt-get update && apt-get install postfix=3.7.5-2 opendkim=2.11.0 opendkim-tools=2.11.0 ca-certificates curl net-tools procps -y && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install postfix=3.7.5-2 postfix-pgsql=3.7.5-2 ca-certificates curl net-tools procps -y && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/sbin/postfix", "start-fg"]