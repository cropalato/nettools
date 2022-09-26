# nettools

## running the container from dockerhub

### iperf server

```bash
docker run --rm -p 5001:5001 cropalato/nettools:latest iperf -s
```

### iperf client

```bash
docker run --rm cropalato/nettools:latest iperf -c <iperf server ip>
```

### qperf server

```bash
docker run -p 19765:19765 -p 19766:19766 --name iperf-server --rm -it cropalato/nettools:latest qperf
```

### qperf client

```bash
docker run --name qperf-client --rm cropalato/nettols:latest qperf -ip 19766 <qperf server ip> tcp_bw tcp_lat
```

### mtr

```bash
docker run --rm cropalato/nettols:latest mtr --no-dns --report --report-cycles 60 <iperf server ip>
```

