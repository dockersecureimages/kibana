# Kibana

Kibana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/kibana:7.6.1-alpine-3.11.3
2020/03/05 21:38:36 [INFO] ▶ Start clair-scanner
2020/03/05 21:38:58 [INFO] ▶ Server listening on port 9279
2020/03/05 21:38:58 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/03/05 21:38:58 [INFO] ▶ Analyzing 672cba640de0ddec2dae038dac4fa5f0e52eb339fbc31b817b1e98cb2bcda676
2020/03/05 21:38:58 [INFO] ▶ Analyzing feba9e50fcbc6917d8a9a99c061179564c3a9b60da3b1e2602b6110fc0bd6d7f
2020/03/05 21:38:58 [INFO] ▶ Analyzing 886faea22c9843e9a90b734a79694dfbe98e5a0720e2cbdcad6ac25016adae5b
2020/03/05 21:38:58 [INFO] ▶ Analyzing 100f1ea63ed6b91d97e17bc8ece2111bf1a3f4d8f2b96381385c55c4dad99314
2020/03/05 21:38:59 [INFO] ▶ Analyzing 99b38fe6412b74a136f713528e6bd079f348bf402b0c4dae789b41c9ca722788
2020/03/05 21:38:59 [INFO] ▶ Analyzing 88c57a892d76d55c4608b12c0b17ef623ef368845724598049721b6feecbeabc
2020/03/05 21:38:59 [INFO] ▶ Analyzing a140b5c86cfcb811d162dc261b42b84b20f923c83c9e954abf76a0d67c7ee890
2020/03/05 21:38:59 [INFO] ▶ Image [secureimages/kibana:7.6.1-alpine-3.11.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.0 --no-progress secureimages/kibana:7.6.1-alpine-3.11.3
2020-03-05T19:39:08.295Z        INFO    Need to update DB
2020-03-05T19:39:08.295Z        INFO    Downloading DB...
2020-03-05T19:39:12.606Z        INFO    Reopening DB...
2020-03-05T19:39:42.667Z        INFO    Detecting Alpine vulnerabilities...
2020-03-05T19:39:42.668Z        INFO    Detecting yarn vulnerabilities...

secureimages/kibana:7.6.1-alpine-3.11.3 (alpine 3.11.3)
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
2020/03/05 21:39:49 [INFO] ▶ Start clair-scanner
2020/03/05 21:40:20 [INFO] ▶ Server listening on port 9279
2020/03/05 21:40:20 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/03/05 21:40:20 [INFO] ▶ Analyzing c80efae86c01b3d986a690778f0a6d65bbf1312e1a5b401a644e21a0af309248
2020/03/05 21:40:20 [INFO] ▶ Analyzing 00e3bec5470b0f9f223a8f4e381b5d189427f35b7f63f6d598a7c04072b75eb5
2020/03/05 21:40:20 [INFO] ▶ Analyzing 95825355eb672908614513e57ea76d98e4bd20de20eb20c1f764a289fa18acea
2020/03/05 21:40:20 [INFO] ▶ Analyzing 52dbcfaf9d8b97f053d3a701761b94627e6ab3471ba5a7c1b0020335fc8f81d6
2020/03/05 21:40:20 [INFO] ▶ Analyzing b8b9ab3360ece82a8107b10c2a8ae0e7331f321d94824f4bacb125383a954f9f
2020/03/05 21:40:20 [INFO] ▶ Analyzing eeb3549909f625c8522d871ec08dfcea141d12c865d9e7e7f4662317e41ebd55
2020/03/05 21:40:20 [INFO] ▶ Analyzing 3888cc18f3426ea31fde595652764c6a82f91bfde8908f49b766b26e4b7b97ec
2020/03/05 21:40:20 [INFO] ▶ Analyzing 72a86e5919bee2a2b671ce91bbf7e1ec7763b6176674f7c7eba45414bafa3e3b
2020/03/05 21:40:20 [INFO] ▶ Analyzing 278ce941dba36fe93d2f193d4cfcb96edad75a7d91fa3b20514f6138f79e64dc
2020/03/05 21:40:20 [INFO] ▶ Image [docker.elastic.co/kibana/kibana:7.6.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.0 --no-progress docker.elastic.co/kibana/kibana:7.6.1
2020-03-05T19:40:22.657Z        INFO    Need to update DB
2020-03-05T19:40:22.657Z        INFO    Downloading DB...
2020-03-05T19:40:32.830Z        INFO    Reopening DB...
2020-03-05T19:41:10.897Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-03-05T19:41:10.915Z        INFO    Detecting yarn vulnerabilities...

docker.elastic.co/kibana/kibana:7.6.1 (centos 7.7.1908)
=======================================================
Total: 631 (UNKNOWN: 0, LOW: 61, MEDIUM: 460, HIGH: 106, CRITICAL: 4)

usr/share/kibana/x-pack/legacy/plugins/apm/cypress/yarn.lock
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
