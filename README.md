# Kibana

Kibana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~963MB)

Security scanning using Clair
```
clair-scanner secureimages/kibana:7.7.1-alpine-3.11.5
2020/06/11 12:59:59 [INFO] ▶ Start clair-scanner
2020/06/11 13:00:31 [INFO] ▶ Server listening on port 9279
2020/06/11 13:00:31 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/06/11 13:00:31 [INFO] ▶ Analyzing c09d398ffa2fba58858c97579ba9e01ff4f0d05bd676c53668b3be4acf0daee8
2020/06/11 13:00:31 [INFO] ▶ Analyzing 94c6d47d13bac108c53a5ba3a7def95518ea828b32b8f2e6fbc029c9fc4f0366
2020/06/11 13:00:31 [INFO] ▶ Analyzing 5f7a90fdbd5385eb8e62167d905c3ec4c78f29ccf3bb206060d3d7bcf70a4567
2020/06/11 13:00:31 [INFO] ▶ Analyzing 648a56848af679264482e8f516e6a1fd8308cd224131ab8e904946dc90e94ad8
2020/06/11 13:00:33 [INFO] ▶ Analyzing 992742912d30be279162cdc2598ea7ba07dc3394cd9d03fe6ca23a808753f862
2020/06/11 13:00:33 [INFO] ▶ Analyzing 01f13b250e9959c0a95680c086e2bd1de0e9020959db313ce374e3bcc8da951b
2020/06/11 13:00:33 [INFO] ▶ Analyzing 0b7c0fc327d0cca23fb963eb53d8168d5a0a4a4380ad5eb46ca34faf9b23a247
2020/06/11 13:00:33 [INFO] ▶ Image [secureimages/kibana:7.7.1-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/kibana:7.7.1-alpine-3.11.5
2020-06-11T10:01:51.392Z        INFO    Need to update DB
2020-06-11T10:01:51.392Z        INFO    Downloading DB...
2020-06-11T10:02:42.710Z        INFO    Detecting Alpine vulnerabilities...
2020-06-11T10:02:42.711Z        INFO    Detecting yarn vulnerabilities...

secureimages/kibana:7.7.1-alpine-3.11.5 (alpine 3.11.5)
=======================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/kibana/x-pack/legacy/plugins/apm/e2e/yarn.lock
========================================================
Total: 7 (UNKNOWN: 0, LOW: 0, MEDIUM: 6, HIGH: 1, CRITICAL: 0)
```

## Official Docker image (~1.2GB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/kibana/kibana:7.7.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/kibana/kibana:7.7.1
2020/06/11 13:02:50 [INFO] ▶ Start clair-scanner
2020/06/11 13:03:27 [INFO] ▶ Server listening on port 9279
2020/06/11 13:03:27 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/06/11 13:03:27 [INFO] ▶ Analyzing b1977199067240c402ee9d758f222c83da16aa4a6a6d2ec570cad0cfbc01bbef
2020/06/11 13:03:27 [INFO] ▶ Analyzing c8b33712f142e41cf863370d9b38686fcf76e3273484988f30c0aa8df4649b28
2020/06/11 13:03:27 [INFO] ▶ Analyzing 2f5c5c87dbdd53fd015aea9d91a022d7a6ca68e1611b661d32bc261dc23f9a49
2020/06/11 13:03:27 [INFO] ▶ Analyzing 8eccfb97fd91190925341e037fd45fba7d8711bd50e6fd5af7ec18aba64153e7
2020/06/11 13:03:28 [INFO] ▶ Analyzing 0eb6c5797e5aee45f6883d0852fe0932cd87e0ff82667392f93de55023dbb3cf
2020/06/11 13:03:28 [INFO] ▶ Analyzing 314b65a90752a27533597c92c4d18c9bf36b60b573762d5d88d9f4785b78dc55
2020/06/11 13:03:28 [INFO] ▶ Analyzing 3bda384bc58a91fc50709ef2e617f514550a12adba03bcb38a9b3409a6a1427e
2020/06/11 13:03:28 [INFO] ▶ Analyzing 9fddfdce184093237edfb2f2b3def2ef2ec405fb9f6b4403282c8a75b4038d51
2020/06/11 13:03:28 [INFO] ▶ Analyzing a13f315dc28471a9771a94960523b4f892df886aecac697e69ebef64634310c4
2020/06/11 13:03:28 [INFO] ▶ Analyzing 3949d41c44aa09101f0f2983505cbd42d59c43a3c59698143059ace5d99ca445
2020/06/11 13:03:28 [WARN] ▶ Image [docker.elastic.co/kibana/kibana:7.7.1] contains 1 total vulnerabilities
2020/06/11 13:03:28 [ERRO] ▶ Image [docker.elastic.co/kibana/kibana:7.7.1] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress docker.elastic.co/kibana/kibana:7.7.1
2020-06-11T10:03:32.014Z        INFO    Need to update DB
2020-06-11T10:03:32.014Z        INFO    Downloading DB...
2020-06-11T10:04:15.381Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-06-11T10:04:15.398Z        INFO    Detecting yarn vulnerabilities...

docker.elastic.co/kibana/kibana:7.7.1 (centos 7.8.2003)
=======================================================
Total: 620 (UNKNOWN: 0, LOW: 369, MEDIUM: 244, HIGH: 7, CRITICAL: 0)

usr/share/kibana/x-pack/legacy/plugins/apm/e2e/yarn.lock
========================================================
Total: 7 (UNKNOWN: 0, LOW: 0, MEDIUM: 6, HIGH: 1, CRITICAL: 0)
```
