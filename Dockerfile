FROM alpine:latest
EXPOSE 5001/tcp
EXPOSE 5001/udp
RUN mkdir /nettools
WORKDIR /nettools
RUN apk add --no-cache iperf mtr
ENTRYPOINT ["/usr/bin/iperf", "-s"]
