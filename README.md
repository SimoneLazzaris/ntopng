 = NTOPNG

A simple docker for ntopng (+ redis). To specify ntopng options, just add them as args to docker.

To start it, just
```sh
docker run --net=host -p 3000:3000 slazzaris/ntopng -w
```

Important: use `--net=host` to have ntopng able to see host network interfaces. Default admin console is at port 3000, hence the mapping.
