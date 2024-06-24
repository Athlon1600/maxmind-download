FROM ubuntu:24.10

RUN apt-get update && apt-get install -y curl tar && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY maxmind.sh /usr/local/bin/download.sh
RUN chmod +x /usr/local/bin/download.sh

ENTRYPOINT ["/usr/local/bin/download.sh"]
