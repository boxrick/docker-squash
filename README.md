docker-squash
=============

Forked from here https://github.com/jwilder/docker-squash and here https://github.com/apiaryio/docker-squash

### Usage

Example usage

Build image:
```
docker build . -t docker-squash
```

Use Docker squash container
```
docker save DOCKERIMAGE | docker run -i docker-squash -t NEW-TAG -verbose | docker import - NEW-TAG
```

## License

MIT
