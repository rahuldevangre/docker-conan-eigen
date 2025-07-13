# 🚀 Docker + Conan + Eigen Example

This project demonstrates how to:

- Use **[Conan](https://conan.io/)** to manage C++ dependencies like [Eigen](https://eigen.tuxfamily.org/)
- Use **CMake** for build configuration
- Build everything inside a minimal **Docker** container

## ⚙️ Prerequisites

- [Docker](https://docs.docker.com/engine/install/ubuntu/) installed on your system.

To install Docker on Ubuntu 22.04:

```bash
sudo apt-get update
sudo apt-get install -y docker.io
sudo usermod -aG docker $USER
newgrp docker

## Verify installation
docker --version

## 📦 Build the Docker Image

docker build -t eigen-app .

## ▶️ Run the App
docker run --rm eigen-app

## Expected output
Solution x:
      -2
0.999997
       1


