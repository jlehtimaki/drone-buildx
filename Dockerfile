FROM arm64v8/docker:19.03.8-dind

ENV DOCKER_HOST=unix:///var/run/docker.sock

ADD drone-dockerx /bin/
ENTRYPOINT ["/usr/local/bin/dockerd-entrypoint.sh", "/bin/drone-dockerx"]