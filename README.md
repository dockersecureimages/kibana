# Kibana

Kibana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/kibana:7.6.0-alpine-3.8.2
2020/02/11 20:31:20 [INFO] ▶ Start clair-scanner
2020/02/11 20:31:35 [INFO] ▶ Server listening on port 9279
2020/02/11 20:31:35 [INFO] ▶ Analyzing 1bb29d248cda54ae7e8f18074e92c79179d15d7d4844a7f5708cba0a154253d3
2020/02/11 20:31:36 [INFO] ▶ Analyzing e74d0609cb575bf841627cee6fd5942f45a5c1ac443dc10165bb529d0368cc09
2020/02/11 20:31:36 [INFO] ▶ Analyzing bed75f80ed22b88e72bb1ea92e25491d0eb99deacaa28f253d39bfc91ccceade
2020/02/11 20:31:36 [INFO] ▶ Analyzing b101b68c8d614f5ec682c2f6c5dc3adfcc62e3c5b09287f2190ac02ed6296ec8
2020/02/11 20:31:37 [INFO] ▶ Analyzing 96a43c93b0070f9992a272a30fc4fedef25487348dbffa278725c3c20a8c2e88
2020/02/11 20:31:37 [INFO] ▶ Analyzing 2394d34cc28b7941cee091a59161d61b9974cc181859edb0a86a524950d7ae30
2020/02/11 20:31:37 [INFO] ▶ Analyzing 68eb28c365a446590adefa6936272f2b3cf2286c8d63f1da2f84a04a7d9acbf7
2020/02/11 20:31:37 [INFO] ▶ Image [secureimages/kibana:7.6.0-alpine-3.8.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/kibana:7.6.0-alpine-3.8.2
2020-02-11T18:31:41.243Z        INFO    Need to update DB
2020-02-11T18:31:41.243Z        INFO    Downloading DB...
2020-02-11T18:31:44.953Z        INFO    Reopening DB...
2020-02-11T18:32:11.403Z        INFO    Detecting Alpine vulnerabilities...
2020-02-11T18:32:11.406Z        INFO    Detecting yarn vulnerabilities...

secureimages/kibana:7.6.0-alpine-3.8.2 (alpine 3.8.2)
=====================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)


usr/share/kibana/x-pack/legacy/plugins/apm/cypress/yarn.lock
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/kibana/kibana:7.6.0
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/kibana/kibana:7.6.0
2020/02/11 20:32:23 [INFO] ▶ Start clair-scanner
2020/02/11 20:32:50 [INFO] ▶ Server listening on port 9279
2020/02/11 20:32:50 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/02/11 20:32:50 [INFO] ▶ Analyzing a289fceb0fda4929f3bdfa250a6af9cd9d7f2807b61c4e00519cd1c70655ea24
2020/02/11 20:32:52 [INFO] ▶ Analyzing 9918116cbf7e53e3ba780df52edc41e3c8450c7168fb9ff693afa0dce7a23421
2020/02/11 20:32:52 [INFO] ▶ Analyzing 50bd6638ffe49be1fa9fa933921a1e01e5b02d6ea253c727c9b4eac0e34e4ce2
2020/02/11 20:32:52 [INFO] ▶ Analyzing f67b6272026f9ffb0f0f3676810063ed1cc2be8106ba325572ca85dcba7d7d00
2020/02/11 20:32:53 [INFO] ▶ Analyzing a42eb9761751f820caa9c2e846c33039ed5ad4da91b897d0a9aab8d29a50d521
2020/02/11 20:32:53 [INFO] ▶ Analyzing 2511d577d722a2eba477eb4112f1bf8b1b09a61d19b132deb4b532cc5bbaaa01
2020/02/11 20:32:53 [INFO] ▶ Analyzing aaba02e19a7401b9ee82a4bd6e43589dabad7f80d4f0bf721cbd42257287449e
2020/02/11 20:32:53 [INFO] ▶ Analyzing 4ccc6a30df777338a42c4e32f8bd4c0f9c66b82437bec27df08331486a7ff6b0
2020/02/11 20:32:53 [INFO] ▶ Analyzing 430c36af82ee79b46febf3369654e90d8fd0ce3c2c5e2f74e4f52c8376ebc74b
2020/02/11 20:32:53 [INFO] ▶ Image [docker.elastic.co/kibana/kibana:7.6.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress docker.elastic.co/kibana/kibana:7.6.0
2020-02-11T18:32:56.147Z        INFO    Need to update DB
2020-02-11T18:32:56.147Z        INFO    Downloading DB...
2020-02-11T18:33:00.480Z        INFO    Reopening DB...
2020-02-11T18:33:32.903Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-02-11T18:33:32.941Z        INFO    Detecting yarn vulnerabilities...

docker.elastic.co/kibana/kibana:7.6.0 (centos 7.7.1908)
=======================================================
Total: 623 (UNKNOWN: 0, LOW: 59, MEDIUM: 453, HIGH: 107, CRITICAL: 4)

usr/share/kibana/x-pack/legacy/plugins/apm/cypress/yarn.lock
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
