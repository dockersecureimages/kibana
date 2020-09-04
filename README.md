# Kibana

Kibana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~985MB)

Security scanning using Clair
```
clair-scanner secureimages/kibana:7.9.1-alpine-3.11.6
2020/09/04 16:03:12 [INFO] ▶ Start clair-scanner
2020/09/04 16:03:27 [INFO] ▶ Server listening on port 9279
2020/09/04 16:03:27 [INFO] ▶ Analyzing a9cc4ace48cd792ef888ade20810f82f6c24aaf2436f30337a2a712cd054dc97
2020/09/04 16:03:27 [INFO] ▶ Analyzing 7b8ac32affcc27ca061c9239750dad0d9f6c4dc2e2f3bffe9535a665d49aa5a1
2020/09/04 16:03:27 [INFO] ▶ Analyzing 6149978933774d46e992feb30831c74c9818366470106c2c7349024ad96f4523
2020/09/04 16:03:27 [INFO] ▶ Analyzing 34b2f9f124a17126c73ea5eb93f28d44ac1819cb5803a47529eef45de5292070
2020/09/04 16:03:27 [INFO] ▶ Analyzing 6de4e5978c1e2f0fd740d8a1c11a44baa9994fad4ce14044eacc2115a9a98e5d
2020/09/04 16:03:27 [INFO] ▶ Analyzing 108f7d9160900b33909677e782510e9dbb651df6fbf90e1f37e33b352fee10da
2020/09/04 16:03:28 [INFO] ▶ Analyzing 1d19174de5ed3c1a9704390ab50fdd17d7abffbe27689946b903780a608c1b6d
2020/09/04 16:03:28 [INFO] ▶ Analyzing 66a51736c0533276c1f75f5ff2ae54a60c0c75ee893649db88c58518082c457f
2020/09/04 16:03:28 [INFO] ▶ Image [secureimages/kibana:7.9.1-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress secureimages/kibana:7.9.1-alpine-3.11.6
2020-09-04T16:03:31.785Z        INFO    Need to update DB
2020-09-04T16:03:31.785Z        INFO    Downloading DB...
2020-09-04T16:03:51.815Z        INFO    Detecting Alpine vulnerabilities...
2020-09-04T16:03:51.819Z        INFO    Detecting nodejs vulnerabilities...
2020-09-04T16:03:51.854Z        INFO    Detecting nodejs vulnerabilities...
2020-09-04T16:03:51.913Z        INFO    Detecting nodejs vulnerabilities...
2020-09-04T16:03:51.967Z        INFO    Detecting nodejs vulnerabilities...

secureimages/kibana:7.9.1-alpine-3.11.6 (alpine 3.11.6)
=======================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/kibana/x-pack/plugins/apm/e2e/yarn.lock
=================================================
Total: 8 (UNKNOWN: 0, LOW: 0, MEDIUM: 7, HIGH: 1, CRITICAL: 0)

usr/share/kibana/x-pack/plugins/ingest_manager/yarn.lock
========================================================
Total: 36 (UNKNOWN: 0, LOW: 6, MEDIUM: 16, HIGH: 14, CRITICAL: 0)

usr/share/kibana/x-pack/plugins/security_solution/yarn.lock
===========================================================
Total: 36 (UNKNOWN: 0, LOW: 6, MEDIUM: 16, HIGH: 14, CRITICAL: 0)

usr/share/kibana/x-pack/yarn.lock
=================================
Total: 36 (UNKNOWN: 0, LOW: 6, MEDIUM: 16, HIGH: 14, CRITICAL: 0)
```

## Official Docker image (~1.18GB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/kibana/kibana:7.9.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/kibana/kibana:7.9.1
2020/09/04 16:03:57 [INFO] ▶ Start clair-scanner
2020/09/04 16:04:23 [INFO] ▶ Server listening on port 9279
2020/09/04 16:04:23 [INFO] ▶ Analyzing 33b5e87a65b65985a0445827bd27436b3467bb578d1b1cc2aa0b6000685fb4bf
2020/09/04 16:04:23 [INFO] ▶ Analyzing c06f3c44565f6e71cd152af3c0ac5fffd9139c75fe05498f04498535a5484dbf
2020/09/04 16:04:23 [INFO] ▶ Analyzing 08dad683e81975b51a7e97775e1901dc29c5483e301b4f787eee93dc4a4a46b4
2020/09/04 16:04:23 [INFO] ▶ Analyzing e98bdb5ee0bf173430b2ff022749dffd11e89d0f42c1ae034eec8f1821c8bbad
2020/09/04 16:04:23 [INFO] ▶ Analyzing 3e154af4c3aa0c2dd6f82048f3531c60a19e83181e4fa62b8016503a11d1eb28
2020/09/04 16:04:24 [INFO] ▶ Analyzing 86ba481f8e33e99d554d1ace179f34a80bbf87034b221f3623831598dd7e5c51
2020/09/04 16:04:24 [INFO] ▶ Analyzing 3beb4061bf05aee311c06f26fdac21447f6f0ffa88e1a5f550da23e7b8bf4e01
2020/09/04 16:04:24 [INFO] ▶ Analyzing 5aa630083c3f8a2738ad2d5c751fd9f6a0cf278d8971ade5b71606e1a7847ec1
2020/09/04 16:04:24 [INFO] ▶ Analyzing c026068a7cf529c75af300e6f2d040fddd5648d1f5357e5e27849eb7067b8101
2020/09/04 16:04:24 [INFO] ▶ Analyzing 01b9b0c3cae02c737a3f6ed36fb0044a77443b085297d47f9341e742fca4ed5d
2020/09/04 16:04:24 [INFO] ▶ Analyzing 6d63b308039f8df51a57834c3b721acc7392f9868f8c57472413f3fa7164b315
2020/09/04 16:04:24 [INFO] ▶ Image [docker.elastic.co/kibana/kibana:7.9.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress docker.elastic.co/kibana/kibana:7.9.1
2020-09-04T16:04:35.276Z        INFO    Need to update DB
2020-09-04T16:04:35.276Z        INFO    Downloading DB...
2020-09-04T16:05:01.611Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-09-04T16:05:01.636Z        INFO    Detecting nodejs vulnerabilities...
2020-09-04T16:05:01.656Z        INFO    Detecting nodejs vulnerabilities...
2020-09-04T16:05:01.704Z        INFO    Detecting nodejs vulnerabilities...
2020-09-04T16:05:01.751Z        INFO    Detecting nodejs vulnerabilities...

docker.elastic.co/kibana/kibana:7.9.1 (centos 7.8.2003)
=======================================================
Total: 646 (UNKNOWN: 0, LOW: 372, MEDIUM: 269, HIGH: 5, CRITICAL: 0)

usr/share/kibana/x-pack/plugins/apm/e2e/yarn.lock
=================================================
Total: 8 (UNKNOWN: 0, LOW: 0, MEDIUM: 7, HIGH: 1, CRITICAL: 0)

usr/share/kibana/x-pack/plugins/ingest_manager/yarn.lock
========================================================
Total: 36 (UNKNOWN: 0, LOW: 6, MEDIUM: 16, HIGH: 14, CRITICAL: 0)

usr/share/kibana/x-pack/plugins/security_solution/yarn.lock
===========================================================
Total: 36 (UNKNOWN: 0, LOW: 6, MEDIUM: 16, HIGH: 14, CRITICAL: 0)

usr/share/kibana/x-pack/yarn.lock
=================================
Total: 36 (UNKNOWN: 0, LOW: 6, MEDIUM: 16, HIGH: 14, CRITICAL: 0)
```
