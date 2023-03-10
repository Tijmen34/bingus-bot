FROM alpine:3.17.1

WORKDIR /bingus

RUN apk add --no-cache opus ffmpeg gcompat ca-certificates

COPY bingus-bot .
COPY commands.json .
COPY sounds ./sounds

CMD ["./bingus-bot"]