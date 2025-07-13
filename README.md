# 🚀 Docker + Conan + Eigen Example

This simple example demonstrates a clean and modern way to build C++ applications using:

- 🐳 **Docker** for reproducible, containerized builds
- 📦 **Conan** as a C++ dependency/package manager
- ⚙️ **CMake** as the build system
- 📐 **Eigen** for linear algebra operations

## 🎯 What You Get

✅ A self-contained C++ development environment  
✅ Dockerized build system  
✅ Reproducible dependency resolution with Conan  
✅ Simple Eigen-based app that solves a 3×3 linear system

## ⚙️ Prerequisites (Ubuntu 22.04 or similar)

### 🐳 1. Install Docker (if not installed)

```bash
sudo apt-get update
sudo apt-get install -y docker.io
sudo usermod -aG docker $USER
newgrp docker


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

## Clone the repo

git clone https://github.com/rahuldevangre/docker-conan-eigen.git
cd docker-conan-eigen

## 📦 Build the Docker Image
docker build -t eigen-app .

## ▶️ Run the App
docker run --rm eigen-app

## Expected output
Solution x:
      -2
0.999997
       1


