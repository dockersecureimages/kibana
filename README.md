# Kibana

Kibana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~963MB)

Security scanning using Clair
```
clair-scanner secureimages/kibana:7.7.0-alpine-3.11.5
2020/05/14 12:24:55 [INFO] ▶ Start clair-scanner
2020/05/14 12:25:26 [INFO] ▶ Server listening on port 9279
2020/05/14 12:25:26 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/05/14 12:25:26 [INFO] ▶ Analyzing c09d398ffa2fba58858c97579ba9e01ff4f0d05bd676c53668b3be4acf0daee8
2020/05/14 12:25:26 [INFO] ▶ Analyzing 94c6d47d13bac108c53a5ba3a7def95518ea828b32b8f2e6fbc029c9fc4f0366
2020/05/14 12:25:26 [INFO] ▶ Analyzing 5f7a90fdbd5385eb8e62167d905c3ec4c78f29ccf3bb206060d3d7bcf70a4567
2020/05/14 12:25:26 [INFO] ▶ Analyzing 42e549ebc669beefb0d00d88ba43fcdcf339c1ea214480e7a9282cfade299594
2020/05/14 12:25:27 [INFO] ▶ Analyzing 32ace8ed9f5e8aef59f95d8f1357a2b43055a1f78f7a4ad3eb3caf240113a62e
2020/05/14 12:25:27 [INFO] ▶ Analyzing c1031ce0cf54305641d285d2eed0e234d97db96e5389e8d853415fe15e78c2ff
2020/05/14 12:25:27 [INFO] ▶ Analyzing e5098b27c085be4efe9b9204b16b381a2c3c716ba9772a8783cb84228dd36d20
2020/05/14 12:25:27 [INFO] ▶ Image [secureimages/kibana:7.7.0-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.7.0 --no-progress secureimages/kibana:7.7.0-alpine-3.11.5
2020-05-14T09:25:29.677Z        INFO    Need to update DB
2020-05-14T09:25:29.678Z        INFO    Downloading DB...
2020-05-14T09:26:05.640Z        INFO    Detecting Alpine vulnerabilities...
2020-05-14T09:26:05.640Z        INFO    Detecting yarn vulnerabilities...

secureimages/kibana:7.7.0-alpine-3.11.5 (alpine 3.11.5)
=======================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/kibana/x-pack/legacy/plugins/apm/e2e/yarn.lock
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~1.15GB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/kibana/kibana:7.7.0
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/kibana/kibana:7.7.0
2020/05/14 12:26:10 [INFO] ▶ Start clair-scanner
2020/05/14 12:26:46 [INFO] ▶ Server listening on port 9279
2020/05/14 12:26:46 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/05/14 12:26:46 [INFO] ▶ Analyzing b3353523614e066fc31c3985ea83631678d9221cce27c12893be38462a5caf35
2020/05/14 12:26:47 [INFO] ▶ Analyzing 35e71635c9282cfdeff29639cd5b9cae54ad0ddb9989aa9270c4fbe3f5edc9e7
2020/05/14 12:26:47 [INFO] ▶ Analyzing d86ed9d6614ea539cdb4affa6df88c32536ef8dd404ef9f84f364c374fc0da20
2020/05/14 12:26:47 [INFO] ▶ Analyzing a8ec24e8037fe0e5792546a486b0f49a27cfceeeded371f5dd47b57dca76c36a
2020/05/14 12:26:48 [INFO] ▶ Analyzing 5bc721f32b764aa09d4ace1b8d0b49aaf49b3ee3a4ee5f369682062bc17ac39c
2020/05/14 12:26:48 [INFO] ▶ Analyzing b7830bea4c6203a9a6836b103533cce96d83a2c450005561dad831f84c9784ab
2020/05/14 12:26:48 [INFO] ▶ Analyzing 22b941cbd39c0161fbff1c067df0ef2e0e1ad2b0f42c771e5c69a213529931cb
2020/05/14 12:26:48 [INFO] ▶ Analyzing 7ecea592940cbdd0a9b9c70926ded8554a87631a63e02ac8e4ef3355df993d52
2020/05/14 12:26:48 [INFO] ▶ Analyzing d8d2da73258f741c3d0609ea2ae2fb143f5f1a4086199c204ffa92ad39458c57
2020/05/14 12:26:48 [INFO] ▶ Analyzing 2c77ebb59c7000ab27886ddf1384dec68624854ad2a694a94c15eab358623f85
2020/05/14 12:26:48 [INFO] ▶ Image [docker.elastic.co/kibana/kibana:7.7.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.7.0 --no-progress docker.elastic.co/kibana/kibana:7.7.0
2020-05-14T09:27:32.268Z        INFO    Need to update DB
2020-05-14T09:27:32.268Z        INFO    Downloading DB...
2020-05-14T09:28:15.716Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-05-14T09:28:15.725Z        INFO    Detecting yarn vulnerabilities...

docker.elastic.co/kibana/kibana:7.7.0 (centos 7.8.2003)
=======================================================
Total: 610 (UNKNOWN: 0, LOW: 368, MEDIUM: 237, HIGH: 5, CRITICAL: 0)

usr/share/kibana/x-pack/legacy/plugins/apm/e2e/yarn.lock
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
