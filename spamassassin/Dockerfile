FROM debian:bookworm-slim AS installer
WORKDIR /runtime

RUN apt-get update && apt-get install spamassassin=4.0.0-6 spamc=4.0.0-6 spamd=4.0.0-6 ca-certificates curl net-tools procps rsyslog nano -y && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/sbin/spamd", "spamd", "-s", "stderr", "-x", "-i", "0.0.0.0", "-A", "0.0.0.0/0"]