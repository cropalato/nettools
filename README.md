# nettools

## running the container from dockerhub

### iperf server

```bash
docker run --rm -p 5001:5001 -v $(pwd)/index.html:/app/index.html cropalato/nettols:latest iperf -s
```

### iperf client

```bash
docker run --rm cropalato/nettols:latest iperf -c <iperf server ip>
```

### mtr

```bash
docker run --rm cropalato/nettols:latest mtr --no-dns --report --report-cycles 60 <iperf server ip>
```

