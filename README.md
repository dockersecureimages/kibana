# Kibana

Kibana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/kibana:7.6.0-alpine-3.11.2
2020/02/12 10:40:40 [INFO] ▶ Start clair-scanner
2020/02/12 10:40:59 [INFO] ▶ Server listening on port 9279
2020/02/12 10:40:59 [INFO] ▶ Analyzing 30a36bc16c80b7f41fbae0f2a65857845a322dc98c11b67026ab338cdd2642c8
2020/02/12 10:41:00 [INFO] ▶ Analyzing 8c212a5233068cf7695712b9b457b488f7490f2bf472de889541f98884af37e8
2020/02/12 10:41:00 [INFO] ▶ Analyzing 4a8f6c8da7656b87444b07bc5525dac7c05ab051b4ac16da7667063aa33ea1d8
2020/02/12 10:41:00 [INFO] ▶ Analyzing 01ac1b574b40f3b261a59e4dc30ad34c14f3dd398959d4a0808b80b17eaf4ba1
2020/02/12 10:41:00 [INFO] ▶ Analyzing 858b5862ee298bb85548b2b4bea8b4e76d3bf45e71776dd133184c94ea5f54cd
2020/02/12 10:41:01 [INFO] ▶ Analyzing 05a465251448245647584bf0b0cf5a46322de42079b223424931b8dc9a9bb876
2020/02/12 10:41:01 [INFO] ▶ Analyzing 10607495d0ad683979e55dbd7d9c2e1ff5f7a94a9219f269163b65ce3f33aaeb
2020/02/12 10:41:01 [INFO] ▶ Analyzing 5203438d6d9d7ab521c915ae78dcd75542df1568cbf15bf23e2c49f3baa96014
2020/02/12 10:41:02 [INFO] ▶ Image [secureimages/kibana:7.6.0-alpine-3.11.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/kibana:7.6.0-alpine-3.11.2
2020-02-12T08:41:04.831Z        INFO    Need to update DB
2020-02-12T08:41:04.831Z        INFO    Downloading DB...
2020-02-12T08:41:08.542Z        INFO    Reopening DB...
2020-02-12T08:42:51.585Z        INFO    Detecting Alpine vulnerabilities...
2020-02-12T08:42:51.588Z        INFO    Detecting yarn vulnerabilities...

secureimages/kibana:7.6.0-alpine-3.11.2 (alpine 3.11.2)
=======================================================
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
2020/02/12 10:43:00 [INFO] ▶ Start clair-scanner
2020/02/12 10:43:30 [INFO] ▶ Server listening on port 9279
2020/02/12 10:43:30 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/02/12 10:43:32 [INFO] ▶ Analyzing a289fceb0fda4929f3bdfa250a6af9cd9d7f2807b61c4e00519cd1c70655ea24
2020/02/12 10:43:33 [INFO] ▶ Analyzing 9918116cbf7e53e3ba780df52edc41e3c8450c7168fb9ff693afa0dce7a23421
2020/02/12 10:43:33 [INFO] ▶ Analyzing 50bd6638ffe49be1fa9fa933921a1e01e5b02d6ea253c727c9b4eac0e34e4ce2
2020/02/12 10:43:33 [INFO] ▶ Analyzing f67b6272026f9ffb0f0f3676810063ed1cc2be8106ba325572ca85dcba7d7d00
2020/02/12 10:43:33 [INFO] ▶ Analyzing a42eb9761751f820caa9c2e846c33039ed5ad4da91b897d0a9aab8d29a50d521
2020/02/12 10:43:34 [INFO] ▶ Analyzing 2511d577d722a2eba477eb4112f1bf8b1b09a61d19b132deb4b532cc5bbaaa01
2020/02/12 10:43:34 [INFO] ▶ Analyzing aaba02e19a7401b9ee82a4bd6e43589dabad7f80d4f0bf721cbd42257287449e
2020/02/12 10:43:34 [INFO] ▶ Analyzing 4ccc6a30df777338a42c4e32f8bd4c0f9c66b82437bec27df08331486a7ff6b0
2020/02/12 10:43:34 [INFO] ▶ Analyzing 430c36af82ee79b46febf3369654e90d8fd0ce3c2c5e2f74e4f52c8376ebc74b
2020/02/12 10:43:34 [INFO] ▶ Image [docker.elastic.co/kibana/kibana:7.6.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress docker.elastic.co/kibana/kibana:7.6.0
2020-02-12T08:43:36.596Z        INFO    Need to update DB
2020-02-12T08:43:36.596Z        INFO    Downloading DB...
2020-02-12T08:43:40.581Z        INFO    Reopening DB...
2020-02-12T08:44:14.230Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-02-12T08:44:14.262Z        INFO    Detecting yarn vulnerabilities...

docker.elastic.co/kibana/kibana:7.6.0 (centos 7.7.1908)
=======================================================
Total: 623 (UNKNOWN: 0, LOW: 59, MEDIUM: 453, HIGH: 107, CRITICAL: 4)

usr/share/kibana/x-pack/legacy/plugins/apm/cypress/yarn.lock
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
