ARG DOCKER_BASE_IMAGE
FROM $DOCKER_BASE_IMAGE

HEALTHCHECK --interval=5s --timeout=3s CMD traefik healthcheck --ping