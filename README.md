# Kibana

Kibana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/kibana:7.6.1-alpine-3.11.2
2020/03/05 15:35:30 [INFO] ▶ Start clair-scanner
2020/03/05 15:35:52 [INFO] ▶ Server listening on port 9279
2020/03/05 15:35:52 [INFO] ▶ Analyzing 30a36bc16c80b7f41fbae0f2a65857845a322dc98c11b67026ab338cdd2642c8
2020/03/05 15:35:52 [INFO] ▶ Analyzing 8c212a5233068cf7695712b9b457b488f7490f2bf472de889541f98884af37e8
2020/03/05 15:35:53 [INFO] ▶ Analyzing 4a8f6c8da7656b87444b07bc5525dac7c05ab051b4ac16da7667063aa33ea1d8
2020/03/05 15:35:53 [INFO] ▶ Analyzing 01ac1b574b40f3b261a59e4dc30ad34c14f3dd398959d4a0808b80b17eaf4ba1
2020/03/05 15:35:53 [INFO] ▶ Analyzing 15e58d9eeda19c68e667c31cd2df0dac2a3cc89820c7f10cc06d887bac9dcf1f
2020/03/05 15:35:54 [INFO] ▶ Analyzing fe5008c99ac78f23baaf82a7ca36d51c99d61a0f6df5e6214f5827134b16161b
2020/03/05 15:35:54 [INFO] ▶ Analyzing aa9ac3761c2bf4c457e91c4bf5287ce35a63ef6984615a584afb5297f6743628
2020/03/05 15:35:54 [INFO] ▶ Analyzing 0a990d6e5470344baea92900d70d93b06ba568b605d13c7f8fb1b2fbc2170044
2020/03/05 15:35:54 [INFO] ▶ Image [secureimages/kibana:7.6.1-alpine-3.11.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.4 --no-progress secureimages/kibana:7.6.1-alpine-3.11.2
2020-03-05T13:35:56.833Z        INFO    Need to update DB
2020-03-05T13:35:56.833Z        INFO    Downloading DB...
2020-03-05T13:36:00.970Z        INFO    Reopening DB...
2020-03-05T13:36:25.984Z        INFO    Detecting Alpine vulnerabilities...
2020-03-05T13:36:25.987Z        INFO    Detecting yarn vulnerabilities...

secureimages/kibana:7.6.1-alpine-3.11.2 (alpine 3.11.2)
=======================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)


usr/share/kibana/x-pack/legacy/plugins/apm/cypress/yarn.lock
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/kibana/kibana:7.6.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/kibana/kibana:7.6.1
2020/03/05 15:36:33 [INFO] ▶ Start clair-scanner
2020/03/05 15:37:02 [INFO] ▶ Server listening on port 9279
2020/03/05 15:37:02 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/03/05 15:37:02 [INFO] ▶ Analyzing c80efae86c01b3d986a690778f0a6d65bbf1312e1a5b401a644e21a0af309248
2020/03/05 15:37:02 [INFO] ▶ Analyzing 00e3bec5470b0f9f223a8f4e381b5d189427f35b7f63f6d598a7c04072b75eb5
2020/03/05 15:37:02 [INFO] ▶ Analyzing 95825355eb672908614513e57ea76d98e4bd20de20eb20c1f764a289fa18acea
2020/03/05 15:37:02 [INFO] ▶ Analyzing 52dbcfaf9d8b97f053d3a701761b94627e6ab3471ba5a7c1b0020335fc8f81d6
2020/03/05 15:37:03 [INFO] ▶ Analyzing b8b9ab3360ece82a8107b10c2a8ae0e7331f321d94824f4bacb125383a954f9f
2020/03/05 15:37:03 [INFO] ▶ Analyzing eeb3549909f625c8522d871ec08dfcea141d12c865d9e7e7f4662317e41ebd55
2020/03/05 15:37:03 [INFO] ▶ Analyzing 3888cc18f3426ea31fde595652764c6a82f91bfde8908f49b766b26e4b7b97ec
2020/03/05 15:37:03 [INFO] ▶ Analyzing 72a86e5919bee2a2b671ce91bbf7e1ec7763b6176674f7c7eba45414bafa3e3b
2020/03/05 15:37:03 [INFO] ▶ Analyzing 278ce941dba36fe93d2f193d4cfcb96edad75a7d91fa3b20514f6138f79e64dc
2020/03/05 15:37:03 [INFO] ▶ Image [docker.elastic.co/kibana/kibana:7.6.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.4 --no-progress docker.elastic.co/kibana/kibana:7.6.1
2020-03-05T13:37:06.024Z        INFO    Need to update DB
2020-03-05T13:37:06.024Z        INFO    Downloading DB...
2020-03-05T13:37:09.889Z        INFO    Reopening DB...
2020-03-05T13:37:43.191Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-03-05T13:37:43.223Z        INFO    Detecting yarn vulnerabilities...

docker.elastic.co/kibana/kibana:7.6.1 (centos 7.7.1908)
=======================================================
Total: 631 (UNKNOWN: 0, LOW: 61, MEDIUM: 460, HIGH: 106, CRITICAL: 4)

usr/share/kibana/x-pack/legacy/plugins/apm/cypress/yarn.lock
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
