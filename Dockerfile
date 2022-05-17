FROM alpine:latest

RUN apk update
RUN apk add aria2
RUN mkdir /downloads
COPY aria2.conf /
COPY aria2.session /
CMD aria2c --conf-path="aria2.conf"
