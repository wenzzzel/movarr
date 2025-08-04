FROM alpine:latest

RUN apk add --update --no-cache cronie

WORKDIR /app
COPY entrypoint.sh /app/entrypoint.sh
COPY /CronScripts/copy-subtitles.sh /app/copy-subtitles.sh
RUN chmod +x /app/entrypoint.sh /app/copy-subtitles.sh
ENTRYPOINT ["/app/entrypoint.sh"]

# Set environment variables
ENV TZ=Etc/UTC
ENV PUID=1000
ENV PGID=1000

# Define volumes
VOLUME ["/seagateexos1", "/seagateexos2"]