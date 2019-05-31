FROM alpine:latest
RUN apk update && apk add gcc
RUN mkdir /app
COPY . /app
RUN chmod 755 /app/entry-point.sh && \
    chown root:root /app/entry-point.sh
WORKDIR /app
ENTRYPOINT ["/bin/sh"]
CMD ["/app/entry-point.sh"]
