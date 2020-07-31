# Kibana

Kibana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~1.05MB)

Security scanning using Clair
```
clair-scanner secureimages/kibana:7.8.1-alpine-3.11.6
2020/07/31 16:47:16 [INFO] ▶ Start clair-scanner
2020/07/31 16:47:47 [INFO] ▶ Server listening on port 9279
2020/07/31 16:47:47 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/07/31 16:47:47 [INFO] ▶ Analyzing 084d26ff56f6d6058b1f1469b3cd99f64993b8957fad0bbbaab2608a23f2ebc9
2020/07/31 16:47:47 [INFO] ▶ Analyzing a0ba18f0180ad875843025a3665d13c7ad165bac7018a320a6690379fc87c551
2020/07/31 16:47:47 [INFO] ▶ Analyzing 2816de5c1cf7aac29db447e6623c4e5c1487bb2e3951db4feda653e7c6473bd2
2020/07/31 16:47:47 [INFO] ▶ Analyzing 543f962c42e000bd1b91c7f5e764f37429468d1dff76122b823392821d20c76f
2020/07/31 16:47:48 [INFO] ▶ Analyzing b2e25fa929513f8d0b558e3ed86c47707660a14ab564aa3f2bcf30203a0d6974
2020/07/31 16:47:48 [INFO] ▶ Analyzing 3707219c67e8cc9b843b47ebb36aa7a76d7ac918841a8a0cb91f3f6fb2749c1e
2020/07/31 16:47:48 [INFO] ▶ Image [secureimages/kibana:7.8.1-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.1 --no-progress secureimages/kibana:7.8.1-alpine-3.11.6
2020-07-31T13:47:54.584Z        INFO    Need to update DB
2020-07-31T13:47:54.584Z        INFO    Downloading DB...
2020-07-31T13:48:31.598Z        INFO    Detecting Alpine vulnerabilities...
2020-07-31T13:48:31.598Z        INFO    Detecting yarn vulnerabilities...
2020-07-31T13:48:31.607Z        INFO    Detecting yarn vulnerabilities...
2020-07-31T13:48:31.649Z        INFO    Detecting yarn vulnerabilities...

secureimages/kibana:7.8.1-alpine-3.11.6 (alpine 3.11.6)
=======================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/kibana/x-pack/plugins/apm/e2e/yarn.lock
=================================================
Total: 9 (UNKNOWN: 0, LOW: 0, MEDIUM: 8, HIGH: 1, CRITICAL: 0)

usr/share/kibana/x-pack/plugins/ingest_manager/yarn.lock
========================================================
Total: 31 (UNKNOWN: 0, LOW: 5, MEDIUM: 16, HIGH: 8, CRITICAL: 2)

usr/share/kibana/x-pack/plugins/siem/yarn.lock
==============================================
Total: 31 (UNKNOWN: 0, LOW: 5, MEDIUM: 16, HIGH: 8, CRITICAL: 2)
```

## Official Docker image (~1.3GB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/kibana/kibana:7.8.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/kibana/kibana:7.8.1
2020/07/31 16:48:36 [INFO] ▶ Start clair-scanner
2020/07/31 16:49:13 [INFO] ▶ Server listening on port 9279
2020/07/31 16:49:13 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/07/31 16:49:13 [INFO] ▶ Analyzing 017e7d8fa1761c6a09c0f6dce5a38ba2b85bd19c7563859895185fadad5c459a
2020/07/31 16:49:13 [INFO] ▶ Analyzing bf9bc97b091528db2f6c242f0eb93f1cf722cc0652873a69330b655299d08f78
2020/07/31 16:49:13 [INFO] ▶ Analyzing ed5c38e9cb57c24f2fcc1923f45611c14a9bdfef9280971363ee1ae21beaefaa
2020/07/31 16:49:13 [INFO] ▶ Analyzing 4e70af7e047dd473cb98e4d0f5bfbfab5ba95f374a7b9f207b2a6c1878226f33
2020/07/31 16:49:14 [INFO] ▶ Analyzing 027d8be4a37b8ca67e3804e9304a9a706073d3a755130aaf818de7595f043e61
2020/07/31 16:49:14 [INFO] ▶ Analyzing 5f423deb144d721221e31d84b4a9bcc9a901a392a3ea7279b29364b767f251e5
2020/07/31 16:49:14 [INFO] ▶ Analyzing e1f826b02c166bd4e84a4707b08ed26b9bd18c1b3d413361df66b7c976cd8376
2020/07/31 16:49:14 [INFO] ▶ Analyzing 3ff97a169dc70e387843ca45686139a79a356b81c593713b72e62b24b4b88fe3
2020/07/31 16:49:14 [INFO] ▶ Analyzing 202d89e43e14a933f806fd0d974fa1febc2614c4241013b00389373e91011334
2020/07/31 16:49:14 [INFO] ▶ Analyzing f8baaf521ecdbcc3a2a32ed66a9ff04c7300dad0ab33e9d909eec2bc78a659bd
2020/07/31 16:49:14 [INFO] ▶ Image [docker.elastic.co/kibana/kibana:7.8.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.1 --no-progress docker.elastic.co/kibana/kibana:7.8.1
2020-07-31T13:49:17.088Z        INFO    Need to update DB
2020-07-31T13:49:17.088Z        INFO    Downloading DB...
2020-07-31T13:50:00.407Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-07-31T13:50:00.417Z        INFO    Detecting yarn vulnerabilities...
2020-07-31T13:50:00.459Z        INFO    Detecting yarn vulnerabilities...
2020-07-31T13:50:00.467Z        INFO    Detecting yarn vulnerabilities...

docker.elastic.co/kibana/kibana:7.8.1 (centos 7.8.2003)
=======================================================
Total: 628 (UNKNOWN: 0, LOW: 368, MEDIUM: 255, HIGH: 5, CRITICAL: 0)

usr/share/kibana/x-pack/plugins/apm/e2e/yarn.lock
=================================================
Total: 9 (UNKNOWN: 0, LOW: 0, MEDIUM: 8, HIGH: 1, CRITICAL: 0)

usr/share/kibana/x-pack/plugins/ingest_manager/yarn.lock
========================================================
Total: 31 (UNKNOWN: 0, LOW: 5, MEDIUM: 16, HIGH: 8, CRITICAL: 2)

usr/share/kibana/x-pack/plugins/siem/yarn.lock
==============================================
Total: 31 (UNKNOWN: 0, LOW: 5, MEDIUM: 16, HIGH: 8, CRITICAL: 2)
```
