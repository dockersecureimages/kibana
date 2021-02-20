# Kibana

Kibana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~700MB)

Security scanning using Clair
```
clair-scanner secureimages/kibana:7.11.1-alpine-3.12.3
2021/02/20 12:40:59 [INFO] ▶ Start clair-scanner
2021/02/20 12:41:09 [INFO] ▶ Server listening on port 9279
2021/02/20 12:41:09 [INFO] ▶ Analyzing 239a994d90a30d28d70001f62415dabc8636df0ebb561fe4d6c1b4b1d4a6cbcf
2021/02/20 12:41:10 [INFO] ▶ Analyzing 71a8374b7d31462c2dd69ebe52b79ce692c04c6d49b2f982498732e3f230be80
2021/02/20 12:41:10 [INFO] ▶ Analyzing e833716f214b543b46e915c75f89a46f9c42ca832416c0d14c5ebcec4009f7cc
2021/02/20 12:41:10 [INFO] ▶ Analyzing b27afcbf20314f895d222b674c4ef77d15145a8504f898937ca8a1e6a5cd431a
2021/02/20 12:41:10 [INFO] ▶ Analyzing 89b62d38bc739b2f3763d9647a45a39e19dc6f0d2eee91fb5cbfc5f03ed1e470
2021/02/20 12:41:11 [INFO] ▶ Analyzing 64c2ee0ea8d6b7a3d04e7befd5f337324b08a57919a87dc806cd91e8e80f94d5
2021/02/20 12:41:12 [INFO] ▶ Analyzing 049612a37344efcd68887da5c812d9aff375502ca3fe7f3d5546a053264421de
2021/02/20 12:41:12 [INFO] ▶ Analyzing 22f6c6b766b74b07e0d04779be60b0334e7a0a9adbf10cb8629210244d206469
2021/02/20 12:41:12 [INFO] ▶ Image [secureimages/kibana:7.11.1-alpine-3.12.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/kibana:7.11.1-alpine-3.12.3
2021-02-20T12:41:14.629Z        INFO    Need to update DB
2021-02-20T12:41:14.629Z        INFO    Downloading DB...
2021-02-20T12:41:31.071Z        INFO    Detecting Alpine vulnerabilities...
2021-02-20T12:41:31.072Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/kibana:7.11.1-alpine-3.12.3 (alpine 3.12.3)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~1.01GB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/kibana/kibana:7.11.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/kibana/kibana:7.11.1
2021/02/20 12:41:40 [INFO] ▶ Start clair-scanner
2021/02/20 12:42:01 [INFO] ▶ Server listening on port 9279
2021/02/20 12:42:01 [INFO] ▶ Analyzing b5ad3981919b474c18caec8885fc124b01bc7c3e7fa19738cbfae253a22d4a16
2021/02/20 12:42:01 [INFO] ▶ Analyzing 8b90e9d56729b7309cfffcfaf0953c84257f1d9ac31931981399119d3627d19c
2021/02/20 12:42:03 [INFO] ▶ Analyzing 12fb54d495d508b58b7bc50e2d68b068ac1cb80538bfd5b61f731008e38be4d8
2021/02/20 12:42:03 [INFO] ▶ Analyzing 51f96218069962712544bdccfea1c59b66b616c0d58ba0cec630c6f50bbc06d6
2021/02/20 12:42:03 [INFO] ▶ Analyzing 3d4855ff869c805449c4a46f003d5452fabd0a42d749d985e0a6a0f31efbc95a
2021/02/20 12:42:03 [INFO] ▶ Analyzing 860f650c161c1310fa1bc8e3bb84f86a7e3bb995530c06dae9a8ed79cf0c9297
2021/02/20 12:42:03 [INFO] ▶ Analyzing 119f91644923f58d49ace07c13cbff637e9047f99976925f316b34135b2d591f
2021/02/20 12:42:04 [INFO] ▶ Analyzing 53b540f910d3ffcb5ee1613493057ad8be1dee04350119d99d969186a3af2bfd
2021/02/20 12:42:04 [INFO] ▶ Analyzing 6001393b03a6953abc95706c859f5e545d2dd602e4a51a931c0f98d36a536113
2021/02/20 12:42:04 [INFO] ▶ Analyzing b56005249f934309605c4ae653e472384926a157e18406741da15055f81fa485
2021/02/20 12:42:04 [INFO] ▶ Analyzing 118732eb65a0b430c1e996be6a54044afa32eae00f9a253e33eb8360de4f6499
2021/02/20 12:42:04 [INFO] ▶ Analyzing cfe6aa48a202703b833cb2c475b5af0a80dedd3133e719ba75db2b92bed6f80d
2021/02/20 12:42:04 [INFO] ▶ Analyzing 9a2938f779fb538c58eb0ebdf469ad299711b6157923d0164ba8a4330151f3af
2021/02/20 12:42:04 [WARN] ▶ Image [docker.elastic.co/kibana/kibana:7.11.1] contains 5 total vulnerabilities
2021/02/20 12:42:04 [ERRO] ▶ Image [docker.elastic.co/kibana/kibana:7.11.1] contains 5 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress docker.elastic.co/kibana/kibana:7.11.1
2021-02-20T12:42:06.231Z        INFO    Need to update DB
2021-02-20T12:42:06.231Z        INFO    Downloading DB...
2021-02-20T12:42:27.364Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2021-02-20T12:42:27.392Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

docker.elastic.co/kibana/kibana:7.11.1 (centos 8.3.2011)
========================================================
Total: 263 (UNKNOWN: 0, LOW: 100, MEDIUM: 155, HIGH: 8, CRITICAL: 0)
```
