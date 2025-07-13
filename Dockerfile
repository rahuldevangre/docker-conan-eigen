FROM ubuntu:22.04

# 1. Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    python3-pip \
    git \
    && rm -rf /var/lib/apt/lists/*

# 2. Install Conan
RUN pip3 install conan==2.0.16

# 3. Set up Conan profile
RUN conan profile detect --force

# 4. Set working directory
WORKDIR /app

# 5. Copy project files
COPY . .

# 6. Install Conan dependencies
RUN conan install . --output-folder=build --build=missing \
    -c tools.system.package_manager:mode=install

# 7. Configure and build with CMake (now toolchain file exists!)
RUN cmake -S . -B build \
    -DCMAKE_TOOLCHAIN_FILE=build/conan_toolchain.cmake \
    -DCMAKE_BUILD_TYPE=Release && \
    cmake --build build

# 8. Run app
CMD ["./build/eigen_test"]
