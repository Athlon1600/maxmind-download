## Download MaxMind Databases

![GitHub](https://img.shields.io/github/license/athlon1600/maxmind-download)
![GitHub last commit](https://img.shields.io/github/last-commit/athlon1600/maxmind-download)
![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/athlon1600/maxmind-download/download-and-push.yml?branch=master)
![Docker Pulls](https://img.shields.io/docker/pulls/athlon1600/maxmind-download)

Dockerized script for downloading MaxMind databases:

- GeoLite2-ASN.mmdb
- GeoLite2-City.mmdb

## Usage

- Install Docker
- Signup for GeoLite2 access (https://www.maxmind.com/en/geolite2/signup)

Replace credentials with your own, and then run:

```shell
docker pull athlon1600/maxmind-download:latest
docker run --rm -v /usr/share/GeoIP:/maxmind -e ACCOUNT_ID=xxx -e LICENSE_KEY=xxx maxmind-download
```

:heavy_check_mark: Database files will be downloaded to `/usr/share/GeoIP` directory.

## :earth_americas: CDN Links

Since `databases` directory of this repo will always have up-to-date database files, which you can download via CDN:

```text
https://cdn.jsdelivr.net/gh/athlon1600/maxmind-download@master/databases/GeoLite2-ASN.mmdb
https://cdn.jsdelivr.net/gh/athlon1600/maxmind-download@master/databases/GeoLite2-City.mmdb
```

## License

This product includes GeoLite2 data created by MaxMind, available from
[https://www.maxmind.com](https://www.maxmind.com).

## Links

- https://hub.docker.com/r/athlon1600/maxmind-download
