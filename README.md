# Data Science Docker Environment

This repository contains a Docker environment for data science with:
- Python 3.10
- JupyterLab
- Common data science libraries
- Automated testing and building

## Features
- Automated Docker image building
- Multiple Python data science libraries
- JupyterLab integration
- GitHub Actions integration
- Multi-registry support (GitHub and Aliyun)

## Usage

Pull the image:
```bash
docker pull ghcr.io/USERNAME/datascience:latest
```

Run JupyterLab:
```bash
docker run -p 8888:8888 ghcr.io/USERNAME/datascience:latest
```

## Development

To build locally:
```bash
docker build -t datascience-local .
docker run -p 8888:8888 datascience-local
```
