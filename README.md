# Kibana

Kibana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~755MB)

Security scanning using Clair
```
clair-scanner secureimages/kibana:7.6.2-alpine-3.11.5
2020/04/25 13:04:57 [INFO] ▶ Start clair-scanner
2020/04/25 13:05:20 [INFO] ▶ Server listening on port 9279
2020/04/25 13:05:20 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/04/25 13:05:20 [INFO] ▶ Analyzing c09d398ffa2fba58858c97579ba9e01ff4f0d05bd676c53668b3be4acf0daee8
2020/04/25 13:05:20 [INFO] ▶ Analyzing 94c6d47d13bac108c53a5ba3a7def95518ea828b32b8f2e6fbc029c9fc4f0366
2020/04/25 13:05:20 [INFO] ▶ Analyzing 5f7a90fdbd5385eb8e62167d905c3ec4c78f29ccf3bb206060d3d7bcf70a4567
2020/04/25 13:05:20 [INFO] ▶ Analyzing 4af182177a47c7caafb4e0bade4aab8f2bdd73840969e6606a7fa729ab6db800
2020/04/25 13:05:21 [INFO] ▶ Analyzing e43753771373a18308c6f1480056d6c00c4f37a089d63b43577bff309c951ab5
2020/04/25 13:05:21 [INFO] ▶ Analyzing 8a0979b9562553c98305a53aba4ad2dc04328866fea9336229f6aea9b7b33ba1
2020/04/25 13:05:21 [INFO] ▶ Analyzing 5c9667a3b8d1d3b5a5777e47cd5223d4ab56669682f524df54cd514af8733448
2020/04/25 13:05:21 [INFO] ▶ Image [secureimages/kibana:7.6.2-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/kibana:7.6.2-alpine-3.11.5
2020-04-25T10:05:26.071Z        INFO    Need to update DB
2020-04-25T10:05:26.071Z        INFO    Downloading DB...
2020-04-25T10:05:54.616Z        INFO    Detecting Alpine vulnerabilities...
2020-04-25T10:05:54.616Z        INFO    Detecting yarn vulnerabilities...

secureimages/kibana:7.6.2-alpine-3.11.5 (alpine 3.11.5)
=======================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/kibana/x-pack/legacy/plugins/apm/cypress/yarn.lock
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~1.01GB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/kibana/kibana:7.6.2
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/kibana/kibana:7.6.2
2020/04/25 13:07:18 [INFO] ▶ Start clair-scanner
2020/04/25 13:07:47 [INFO] ▶ Server listening on port 9279
2020/04/25 13:07:47 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/04/25 13:07:47 [INFO] ▶ Analyzing bcf9a08cdabbdae6f91b19d85fd3a9762123d949584c2328921eceab945b124d
2020/04/25 13:07:47 [INFO] ▶ Analyzing 55d04ecf8108ebb6d1a299fa09ab345a0ce449a2fab13bb8771bc272df6abaea
2020/04/25 13:07:47 [INFO] ▶ Analyzing 512aae567448f4ca836ac854c3764eaacc0147211eea6406d44a9f0a2a3696ab
2020/04/25 13:07:47 [INFO] ▶ Analyzing 7146c512c6fc6c6cb1227bf780b70317ef60a3e6256ebaf4c7a1a6901f549239
2020/04/25 13:07:48 [INFO] ▶ Analyzing 03085908bfbc1e7644787b4145ab824592b8aa3916127da171735987c0163525
2020/04/25 13:07:48 [INFO] ▶ Analyzing bb2a68751c617400749495d153e414a40e8925908bb4fd605b758f2e43a669fa
2020/04/25 13:07:48 [INFO] ▶ Analyzing 18a4fbe06d68da812f83613937a37845b29d20ef9e99eb5a4c2d72f74120d5d2
2020/04/25 13:07:48 [INFO] ▶ Analyzing dfa568b48c5937210d49d86e7fb3cd52275f229e2c74c4a628339394cb12c126
2020/04/25 13:07:48 [INFO] ▶ Analyzing a6c28f751cad8f871b30a0f3dc742d5dbbd97f8a6c5fac84dd2098ff67c2c118
2020/04/25 13:07:48 [WARN] ▶ Image [docker.elastic.co/kibana/kibana:7.6.2] contains 11 total vulnerabilities
2020/04/25 13:07:48 [ERRO] ▶ Image [docker.elastic.co/kibana/kibana:7.6.2] contains 11 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress docker.elastic.co/kibana/kibana:7.6.2
2020-04-25T10:06:02.716Z        INFO    Need to update DB
2020-04-25T10:06:02.716Z        INFO    Downloading DB...
2020-04-25T10:06:37.748Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-04-25T10:06:37.770Z        INFO    Detecting yarn vulnerabilities...

docker.elastic.co/kibana/kibana:7.6.2 (centos 7.7.1908)
=======================================================
Total: 635 (UNKNOWN: 0, LOW: 62, MEDIUM: 459, HIGH: 110, CRITICAL: 4)

usr/share/kibana/x-pack/legacy/plugins/apm/cypress/yarn.lock
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
