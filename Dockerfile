ARG DOCKER_BASE_IMAGE
FROM $DOCKER_BASE_IMAGE

WORKDIR /etc/traefik/
COPY ./middlewares.yml ./middlewares.yml
COPY ./traefik.yml ./traefik.yml

HEALTHCHECK --interval=5s --timeout=3s CMD traefik healthcheck --ping