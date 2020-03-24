# Kibana

Kibana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/kibana:7.6.1-alpine-3.11.5
2020/03/24 17:39:32 [INFO] ▶ Start clair-scanner
2020/03/24 17:39:56 [INFO] ▶ Server listening on port 9279
2020/03/24 17:39:56 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/03/24 17:39:56 [INFO] ▶ Analyzing c09d398ffa2fba58858c97579ba9e01ff4f0d05bd676c53668b3be4acf0daee8
2020/03/24 17:39:56 [INFO] ▶ Analyzing 94c6d47d13bac108c53a5ba3a7def95518ea828b32b8f2e6fbc029c9fc4f0366
2020/03/24 17:39:56 [INFO] ▶ Analyzing 5f7a90fdbd5385eb8e62167d905c3ec4c78f29ccf3bb206060d3d7bcf70a4567
2020/03/24 17:39:56 [INFO] ▶ Analyzing 69868a0a95eaee23ea153ce40788d73a1842696918ef691501e20427367a0eff
2020/03/24 17:39:57 [INFO] ▶ Analyzing a8786fd82d6eb10391b102eed05730bc6c89482fa43c2942eff10ef7dcb5639d
2020/03/24 17:39:57 [INFO] ▶ Analyzing 042c1aa86eea2de8e8a18a19820a3b2b1756b9d1e9299ce4cfee2eea3e4bb457
2020/03/24 17:39:57 [INFO] ▶ Analyzing 3009d19af0a52fa11ed57bf61ee3a6ebfda610287a54314be393dcc2f40328ee
2020/03/24 17:39:57 [INFO] ▶ Image [secureimages/kibana:7.6.1-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/kibana:7.6.1-alpine-3.11.5
2020-03-24T15:38:34.582Z        INFO    Need to update DB
2020-03-24T15:38:34.582Z        INFO    Downloading DB...
2020-03-24T15:38:38.557Z        INFO    Reopening DB...
2020-03-24T15:39:07.899Z        INFO    Detecting Alpine vulnerabilities...
2020-03-24T15:39:07.900Z        INFO    Detecting yarn vulnerabilities...

secureimages/kibana:7.6.1-alpine-3.11.5 (alpine 3.11.5)
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
2020/03/24 17:40:02 [INFO] ▶ Start clair-scanner
2020/03/24 17:40:31 [INFO] ▶ Server listening on port 9279
2020/03/24 17:40:31 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/03/24 17:40:31 [INFO] ▶ Analyzing c80efae86c01b3d986a690778f0a6d65bbf1312e1a5b401a644e21a0af309248
2020/03/24 17:40:33 [INFO] ▶ Analyzing 00e3bec5470b0f9f223a8f4e381b5d189427f35b7f63f6d598a7c04072b75eb5
2020/03/24 17:40:33 [INFO] ▶ Analyzing 95825355eb672908614513e57ea76d98e4bd20de20eb20c1f764a289fa18acea
2020/03/24 17:40:33 [INFO] ▶ Analyzing 52dbcfaf9d8b97f053d3a701761b94627e6ab3471ba5a7c1b0020335fc8f81d6
2020/03/24 17:40:34 [INFO] ▶ Analyzing b8b9ab3360ece82a8107b10c2a8ae0e7331f321d94824f4bacb125383a954f9f
2020/03/24 17:40:34 [INFO] ▶ Analyzing eeb3549909f625c8522d871ec08dfcea141d12c865d9e7e7f4662317e41ebd55
2020/03/24 17:40:34 [INFO] ▶ Analyzing 3888cc18f3426ea31fde595652764c6a82f91bfde8908f49b766b26e4b7b97ec
2020/03/24 17:40:34 [INFO] ▶ Analyzing 72a86e5919bee2a2b671ce91bbf7e1ec7763b6176674f7c7eba45414bafa3e3b
2020/03/24 17:40:34 [INFO] ▶ Analyzing 278ce941dba36fe93d2f193d4cfcb96edad75a7d91fa3b20514f6138f79e64dc
2020/03/24 17:40:34 [INFO] ▶ Image [docker.elastic.co/kibana/kibana:7.6.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress docker.elastic.co/kibana/kibana:7.6.1
2020-03-24T15:40:39.123Z        INFO    Need to update DB
2020-03-24T15:40:39.123Z        INFO    Downloading DB...
2020-03-24T15:40:43.467Z        INFO    Reopening DB...
2020-03-24T15:41:21.479Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-03-24T15:41:21.499Z        INFO    Detecting yarn vulnerabilities...

docker.elastic.co/kibana/kibana:7.6.1 (centos 7.7.1908)
=======================================================
Total: 639 (UNKNOWN: 0, LOW: 65, MEDIUM: 460, HIGH: 110, CRITICAL: 4)

usr/share/kibana/x-pack/legacy/plugins/apm/cypress/yarn.lock
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
