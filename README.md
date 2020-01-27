# Kibana

Kibana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/kibana:7.5.2-alpine-3.8.2
2020/01/27 11:26:02 [INFO] ▶ Start clair-scanner
2020/01/27 11:26:16 [INFO] ▶ Server listening on port 9279
2020/01/27 11:26:16 [INFO] ▶ Analyzing 1bb29d248cda54ae7e8f18074e92c79179d15d7d4844a7f5708cba0a154253d3
2020/01/27 11:26:16 [INFO] ▶ Analyzing e74d0609cb575bf841627cee6fd5942f45a5c1ac443dc10165bb529d0368cc09
2020/01/27 11:26:17 [INFO] ▶ Analyzing bed75f80ed22b88e72bb1ea92e25491d0eb99deacaa28f253d39bfc91ccceade
2020/01/27 11:26:17 [INFO] ▶ Analyzing aa3fb3c235bdd0eb3af9f3d2468d2804527d290c76ee6d322f846124b16aced7
2020/01/27 11:26:18 [INFO] ▶ Analyzing 7c098399e67d3b5cb22e358fcaee137a82059fd1d744cbeac4ea576d916cace0
2020/01/27 11:26:18 [INFO] ▶ Analyzing 589b11a8ec45c54d2b5110d813c8e151bc2066845d96dc9d05791e137ac53b44
2020/01/27 11:26:18 [INFO] ▶ Analyzing 658b9cbad64ac40915db1b89399c4b0827274ec97e9eff7f44436a4b8c7a389e
2020/01/27 11:26:18 [INFO] ▶ Image [secureimages/kibana:7.5.2-alpine-3.8.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/kibana:7.5.2-alpine-3.8.2
2020-01-27T09:26:20.509Z        INFO    Need to update DB
2020-01-27T09:26:20.509Z        INFO    Downloading DB...
2020-01-27T09:26:24.835Z        INFO    Reopening DB...
2020-01-27T09:26:41.508Z        INFO    Detecting Alpine vulnerabilities...
2020-01-27T09:26:41.510Z        INFO    Detecting yarn vulnerabilities...

secureimages/kibana:7.5.2-alpine-3.8.2 (alpine 3.8.2)
=====================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)


usr/share/kibana/x-pack/legacy/plugins/apm/cypress/yarn.lock
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/kibana/kibana:7.5.2
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/kibana/kibana:7.5.2
2020/01/27 11:26:54 [INFO] ▶ Start clair-scanner
2020/01/27 11:27:17 [INFO] ▶ Server listening on port 9279
2020/01/27 11:27:17 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/01/27 11:27:17 [INFO] ▶ Analyzing 6df7bdb8433fc2093f215f4bfd889df7fa9afc946333234dd379862cb187095a
2020/01/27 11:27:18 [INFO] ▶ Analyzing c345a8988ca6de93f741589d154d87fc85fabcb638a8423b5e4ed3f366c6092b
2020/01/27 11:27:18 [INFO] ▶ Analyzing 45c72ebec77d9c80a696558218385525bf07d72d1d93b56fbda303a87caa0cc4
2020/01/27 11:27:18 [INFO] ▶ Analyzing cd174d26538b7acf44fe9223554743e191fa9aa9d7d11ecb25d69c41115a85e5
2020/01/27 11:27:19 [INFO] ▶ Analyzing a011da127bcdaa2bd9f481ad901f9ea5a224d47692bb5de00caf49a341bcc276
2020/01/27 11:27:19 [INFO] ▶ Analyzing 58f43271f0b168a3d8bb6d520d2519a194b3966353d3c3286608e04110d7e077
2020/01/27 11:27:19 [INFO] ▶ Analyzing ba76a120382203377b0988ce2cc654435edbdd14f924d9252d973fa49554c8f5
2020/01/27 11:27:19 [INFO] ▶ Analyzing 899a8ddeea21f8bb9258d3d4f0f78c8c7bf47a43c116f3452d2857f90a2e9178
2020/01/27 11:27:19 [INFO] ▶ Analyzing 9e0b55e043d95cdbe515b57fb985dc8d7457a5dada6246eba7f080c8da374aaf
2020/01/27 11:27:19 [INFO] ▶ Image [docker.elastic.co/kibana/kibana:7.5.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress docker.elastic.co/kibana/kibana:7.5.2
2020-01-27T09:27:22.224Z        INFO    Need to update DB
2020-01-27T09:27:22.224Z        INFO    Downloading DB...
2020-01-27T09:27:26.317Z        INFO    Reopening DB...
2020-01-27T09:27:46.777Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-01-27T09:27:46.785Z        INFO    Detecting yarn vulnerabilities...

docker.elastic.co/kibana/kibana:7.5.2 (centos 7.7.1908)
=======================================================
Total: 635 (UNKNOWN: 0, LOW: 61, MEDIUM: 461, HIGH: 107, CRITICAL: 6)

usr/share/kibana/x-pack/legacy/plugins/apm/cypress/yarn.lock
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
