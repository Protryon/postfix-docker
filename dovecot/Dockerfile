FROM debian:bookworm-slim AS installer
WORKDIR /runtime

RUN apt-get update && apt-get install dovecot-core=1:2.3.19.1+dfsg1-2.1 dovecot-imapd=1:2.3.19.1+dfsg1-2.1 dovecot-pgsql=1:2.3.19.1+dfsg1-2.1 ca-certificates curl net-tools procps -y && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/sbin/dovecot", "-F"]