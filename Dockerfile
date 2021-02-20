FROM node:14.15.4-alpine3.12
LABEL website="Secure Docker Images https://secureimages.dev"
LABEL description="We secure your business from scratch."
LABEL maintainer="support@secureimages.dev"

ARG KIBANA_VERSION=7.11.1
ARG TARBALL_ASC="https://artifacts.elastic.co/downloads/kibana/kibana-${KIBANA_VERSION}-linux-x86_64.tar.gz.asc"
### https://artifacts.elastic.co/downloads/kibana/kibana-7.11.1-linux-x86_64.tar.gz.sha512
ARG TARBALL_SHA="5facaac7adced5ac2830158d6a7994d9c32e042c320f250626166a9e86cce3fa4c3e8b92809526492b4d09b0b8623ea2c3bfd02751a8f1387bc3f09a1bee642b"
ARG GPG_KEY="46095ACC8548582C1A2699A9D27D666CD88E42B4"

ENV PATH=/usr/share/kibana/bin:$PATH

# fixing CVE-2021-23839, CVE-2021-23840, CVE-2021-23841
RUN apk add --upgrade --no-cache libcrypto1.1 libssl1.1 &&\
    rm -rf /var/cache/apk/* /tmp/*

RUN apk add --no-cache bash su-exec &&\
    apk add --no-cache -t .build-deps ca-certificates gnupg openssl &&\
    set -ex &&\
    wget -O /tmp/kibana.tar.gz https://artifacts.elastic.co/downloads/kibana/kibana-${KIBANA_VERSION}-linux-x86_64.tar.gz &&\
    if [ "$TARBALL_SHA" ]; then \
      echo "$TARBALL_SHA  /tmp/kibana.tar.gz" | sha512sum -c - ;\
    fi &&\
    if [ "$TARBALL_ASC" ]; then \
      wget -O /tmp/kibana.tar.gz.asc "$TARBALL_ASC" &&\
      export GNUPGHOME="$(mktemp -d)" &&\
      ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" \
      || gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" \
      || gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY" ) &&\
      gpg --batch --verify /tmp/kibana.tar.gz.asc /tmp/kibana.tar.gz &&\
      rm -rf "$GNUPGHOME" || true ;\
    fi &&\
    tar -xf /tmp/kibana.tar.gz -C /tmp/ &&\
    mv /tmp/kibana-${KIBANA_VERSION}-linux-x86_64 /usr/share/kibana &&\
    adduser -DH -s /sbin/nologin kibana &&\
    # usr alpine nodejs and not bundled version
    bundled='NODE="${DIR}/node/bin/node"' &&\
    alpine_node='NODE="/usr/local/bin/node"' &&\
    sed -i "s|$bundled|$alpine_node|g" /usr/share/kibana/bin/kibana-plugin &&\
    sed -i "s|$bundled|$alpine_node|g" /usr/share/kibana/bin/kibana &&\
    rm -rf /usr/share/kibana/node &&\
    chown -R kibana:kibana /usr/share/kibana &&\
    apk del --purge .build-deps &&\
    rm -rf /tmp/* /var/cache/apk/*

ADD data/ /

RUN chmod +x /*.sh

WORKDIR /usr/share/kibana

EXPOSE 5601

ENTRYPOINT ["/kibana-entrypoint.sh"]

CMD ["kibana"]
