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
- [Docker](https://docs.docker.com/engine/install/ubuntu/) installed on your system.
- 
```bash
sudo apt-get update
sudo apt-get install -y docker.io
sudo usermod -aG docker $USER
newgrp docker

## Verify installation
```bash
docker --version

### 📥 2. Clone the Repository
```bash
git clone https://github.com/rahuldevangre/docker-conan-eigen.git
cd docker-conan-eigen

### 🛠️ 3. Build the Docker Image
```bash
docker build -t eigen-app .

### ▶️ 4. Run the Application
```bash
docker run --rm eigen-app

✅ Expected Output
```bash
Solution x:
      -2
0.999997
       1


