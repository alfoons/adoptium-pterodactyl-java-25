FROM eclipse-temurin:25-jdk-jammy

# Narzędzia systemowe
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    openssl \
    git \
    tar \
    bash \
    sqlite3 \
    iproute2 \
    && rm -rf /var/lib/apt/lists/*

# Użytkownik Pterodactyl (standardowe UID/GID 999)
RUN groupadd -g 999 container && \
    useradd -m -d /home/container -u 999 -g container -s /bin/bash container

RUN chown -R container:container /home/container

USER container
WORKDIR /home/container

# Entrypoint — Pterodactyl wymaga tego formatu
COPY --chown=container:container entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
