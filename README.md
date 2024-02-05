# Devops Entry Project

This project demonstrates the integration of DevOps practices for continuous integration, containerization with Docker, and deployment using Kubernetes. It's structured to provide a streamlined approach for development and deployment processes.

## How to develop?

1. fork the repo
2. digital ocean accec token set DIGITALOCEAN_ACCESS_TOKEN
3. digital ocean accec token set KUBECONFIG
4. digital ocean accec token set PAT
5. ```git push``` 🚀

## Continues Integration

This section explains how to **build** and **deploy** the project automatically, utilizing CI tools to ensure code quality and automate testing and deployment.

## Declarative Kubernetes Resources

Kubernetes resources for this project are defined declaratively, including configurations for deployment and service management. These can be found in the `k8s` directory, facilitating easy and predictable deployments.

## Containerization with Docker

Defined the shortest way to build the application's container in the [Dockerfile](https://github.com/tubaaktas/devops_case/blob/main/Dockerfile).

- Python:3.10-slim-buster is used for smaller image size, optimizing download and startup times of containers.
- Used `CMD` instead of `ENTRYPOINT` to simplify command execution without the need for a shell script.
- Employed multiple `COPY` commands to leverage the Docker build layer cache, enhancing build performance and efficiency.
