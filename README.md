# Kibana

Kibana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~1.05MB)

Security scanning using Clair
```
clair-scanner secureimages/kibana:7.8.0-alpine-3.11.6
2020/06/19 20:40:10 [INFO] ▶ Start clair-scanner
2020/06/19 20:40:40 [INFO] ▶ Server listening on port 9279
2020/06/19 20:40:40 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/06/19 20:40:40 [INFO] ▶ Analyzing 084d26ff56f6d6058b1f1469b3cd99f64993b8957fad0bbbaab2608a23f2ebc9
2020/06/19 20:40:40 [INFO] ▶ Analyzing a0ba18f0180ad875843025a3665d13c7ad165bac7018a320a6690379fc87c551
2020/06/19 20:40:40 [INFO] ▶ Analyzing 2816de5c1cf7aac29db447e6623c4e5c1487bb2e3951db4feda653e7c6473bd2
2020/06/19 20:40:40 [INFO] ▶ Analyzing 8570cfaccd3aeec8391acd875ab826c4730b72ebe20fe2c8e7bbd081e889086e
2020/06/19 20:40:41 [INFO] ▶ Analyzing 332c7f8e15e80d74361d9df40c6c11411e07770d7adab64f4a05c6d2a98f4c60
2020/06/19 20:40:41 [INFO] ▶ Analyzing aecbbae41160e0c7af583d9b172f8f98fcbddbf9f0835a12ed38b79aaf604d35
2020/06/19 20:40:41 [INFO] ▶ Image [secureimages/kibana:7.8.0-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/kibana:7.8.0-alpine-3.11.6
2020-06-19T17:40:43.864Z        INFO    Need to update DB
2020-06-19T17:40:43.864Z        INFO    Downloading DB...
2020-06-19T17:41:20.232Z        INFO    Detecting Alpine vulnerabilities...
2020-06-19T17:41:20.233Z        INFO    Detecting yarn vulnerabilities...
2020-06-19T17:41:20.267Z        INFO    Detecting yarn vulnerabilities...
2020-06-19T17:41:20.274Z        INFO    Detecting yarn vulnerabilities...

secureimages/kibana:7.8.0-alpine-3.11.6 (alpine 3.11.6)
=======================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/kibana/x-pack/plugins/apm/e2e/yarn.lock
=================================================
Total: 7 (UNKNOWN: 0, LOW: 0, MEDIUM: 6, HIGH: 1, CRITICAL: 0)

usr/share/kibana/x-pack/plugins/ingest_manager/yarn.lock
========================================================
Total: 20 (UNKNOWN: 0, LOW: 4, MEDIUM: 10, HIGH: 4, CRITICAL: 2)

usr/share/kibana/x-pack/plugins/siem/yarn.lock
==============================================
Total: 20 (UNKNOWN: 0, LOW: 4, MEDIUM: 10, HIGH: 4, CRITICAL: 2)
```

## Official Docker image (~1.29GB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/kibana/kibana:7.8.0
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/kibana/kibana:7.8.0
2020/06/19 20:41:25 [INFO] ▶ Start clair-scanner
2020/06/19 20:42:03 [INFO] ▶ Server listening on port 9279
2020/06/19 20:42:03 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/06/19 20:42:03 [INFO] ▶ Analyzing 2fe1bcada5213b86f094e45588f069e4d044c966e1f10bcd65fc6363fa78752a
2020/06/19 20:42:03 [INFO] ▶ Analyzing 84a11c0d094254613bab09bbd9e85715ae9e9e60445e7ef3047646c1ccfcfd55
2020/06/19 20:42:03 [INFO] ▶ Analyzing 5e9149e4fc7c6a977709fd696195e0bbe1785a8411d218f7725141175256b1a2
2020/06/19 20:42:03 [INFO] ▶ Analyzing 5560f5664fc8eb9d124cbe9b597f7f1c861698a6662f55a2507f30fc87664c25
2020/06/19 20:42:04 [INFO] ▶ Analyzing fad4e4c1f64acff7d412c3740817b616b7736cacab6f35e1624298d15d2b9573
2020/06/19 20:42:04 [INFO] ▶ Analyzing 44e58c0a573f72c6be58ccb46b33bf8dae37b0d06ebaa5b72e096e777df7b253
2020/06/19 20:42:04 [INFO] ▶ Analyzing 3dceb9cb41227d6717e711caf02c150e9b7aca2afc420ff099129d7f317a6070
2020/06/19 20:42:04 [INFO] ▶ Analyzing 38f8186423fea520b24dee1e8f7e5d6fb33be756d89a284bb87fdc801897aed1
2020/06/19 20:42:04 [INFO] ▶ Analyzing 3965f5f1062894156ac705abcc7993623e633556fa86608cd9821488e23ef036
2020/06/19 20:42:04 [INFO] ▶ Analyzing 3d52c2c0433eaf013ebb273ac22eaadc5efa99c3dd8e88b5bf4516e50446a3e2
2020/06/19 20:42:04 [INFO] ▶ Image [docker.elastic.co/kibana/kibana:7.8.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
2020-06-19T17:42:07.293Z        INFO    Need to update DB
2020-06-19T17:42:07.293Z        INFO    Downloading DB...
2020-06-19T17:42:50.631Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-06-19T17:42:50.651Z        INFO    Detecting yarn vulnerabilities...
2020-06-19T17:42:50.659Z        INFO    Detecting yarn vulnerabilities...
2020-06-19T17:42:50.688Z        INFO    Detecting yarn vulnerabilities...

docker.elastic.co/kibana/kibana:7.8.0 (centos 7.8.2003)
=======================================================
Total: 624 (UNKNOWN: 0, LOW: 367, MEDIUM: 252, HIGH: 5, CRITICAL: 0)

usr/share/kibana/x-pack/plugins/apm/e2e/yarn.lock
=================================================
Total: 7 (UNKNOWN: 0, LOW: 0, MEDIUM: 6, HIGH: 1, CRITICAL: 0)

usr/share/kibana/x-pack/plugins/ingest_manager/yarn.lock
========================================================
Total: 20 (UNKNOWN: 0, LOW: 4, MEDIUM: 10, HIGH: 4, CRITICAL: 2)

usr/share/kibana/x-pack/plugins/siem/yarn.lock
==============================================
Total: 20 (UNKNOWN: 0, LOW: 4, MEDIUM: 10, HIGH: 4, CRITICAL: 2)
```
