# docker-terraform
Docker image containing Terraform, AWS CLI and AWS Shell, to deploy infrastructure as code on AWS.

[![Build Status](https://github.com/tothenew/docker-terraform/workflows/Build/badge.svg)](https://github.com/tothenew/docker-terraform/actions)
[![LICENSE](https://img.shields.io/github/license/tothenew/docker-terraform)](https://github.com/tothenew/docker-terraform/blob/master/LICENSE)

## Dependencies
- Docker

## Docker

#### Use Published Image
You can using published docker image like below:

```bash
docker run ttnd/terraform:latest --help
docker run ttnd/terraform:latest <command>
docker run -it --entrypoint "/bin/bash" ttnd/terraform:latest
```

#### Build
Now you are ready to build an image from this project Dockerfile.
```bash
docker build -t docker-terraform .
```

#### Run

After your image has been built successfully, you can run it as a container.

```bash
docker run docker-terraform --help
docker run docker-terraform <command>
```

#### Shell

If you want to access the shell in container, you can run it as below.

```bash
docker run -it --entrypoint "/bin/bash" docker-terraform
```

## Author

Managed by [TO THE NEW Pvt. Ltd.](https://github.com/tothenew)

## License

Apache 2 Licensed. See [LICENSE](https://github.com/tothenew/docker-terraform/blob/master/LICENSE) for full details.
