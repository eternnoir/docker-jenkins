# Jenkins Docker image

A Jenkins docker image.

## Quick Start

```
$ docker run -it -p 8080:8080 eternnoir/jenkins
```

Use open http://localhost:8080 to use.


## Use External Volume

```shell
$ docker run -it -d  -p 8080:8080 \
                    -v /opt/jenkins/data:/jenkins \
                    --name=jenkins \
                    eternnoir/jenkins
```

