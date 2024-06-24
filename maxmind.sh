#!/bin/sh

set -e

ACCOUNT_ID=${ACCOUNT_ID}
LICENSE_KEY=${LICENSE_KEY}

if [ -z "$ACCOUNT_ID" ] || [ -z "$LICENSE_KEY" ]; then
  echo "Missing ACCOUNT_ID or LICENSE_KEY environment variables"
  exit 1
fi

curl -L -u "${ACCOUNT_ID}:${LICENSE_KEY}" "https://download.maxmind.com/geoip/databases/GeoLite2-ASN/download?suffix=tar.gz" | tar -zxv &&
  mkdir -p /usr/share/GeoIP &&
  mv GeoLite2-ASN_*/GeoLite2-ASN.mmdb /usr/share/GeoIP/GeoLite2-ASN.mmdb

curl -L -u "${ACCOUNT_ID}:${LICENSE_KEY}" "https://download.maxmind.com/geoip/databases/GeoLite2-City/download?suffix=tar.gz" | tar -zxv &&
  mkdir -p /usr/share/GeoIP &&
  mv GeoLite2-City_*/GeoLite2-City.mmdb /usr/share/GeoIP/GeoLite2-City.mmdb

cp -r /usr/share/GeoIP/* /maxmind
