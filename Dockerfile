FROM finchsec/kismet

RUN apt-get update && apt-get install -y \
    net-tools \
    netcat-openbsd \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/log/kismet && chmod 755 /var/log/kismet

COPY config_files/kismet.conf /usr/local/etc/kismet.conf
COPY config_files/kismet_logging.conf /usr/local/etc/kismet_logging.conf

VOLUME ["/var/log/kismet"]

EXPOSE 2501 3501

CMD ["kismet", "--config", "/usr/local/etc/kismet.conf"]

HEALTHCHECK CMD curl --fail http://localhost:2501 || exit 1
