FROM alpine:latest
EXPOSE 5001/tcp
EXPOSE 5001/udp
EXPOSE 19765
EXPOSE 19766
RUN mkdir /nettools
WORKDIR /nettools
RUN apk add --no-cache iperf mtr
RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ qperf==0.4.11-r0
CMD ["/bin/sh"]
