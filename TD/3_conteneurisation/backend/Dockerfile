FROM debian:latest

# Installation des outils nécessaires
RUN apt-get update && apt-get install -y \
    bash \
    htop \
    vim \
    net-tools \
    && rm -rf /var/lib/apt/lists/*

ENV OWNER=Jomo
RUN useradd nonroot
USER nonroot
# Maintenir le conteneur actif pendant une heure
CMD ["sleep", "3600"]