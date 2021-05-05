FROM index.docker.io/alpine

RUN apk add php && apk add curl

COPY src/index.php .

ENTRYPOINT ["php"]
CMD ["-f", "index.php", "-S", "0.0.0.0:8080"]

EXPOSE 8080
