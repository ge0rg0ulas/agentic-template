FROM ubuntu:24.04
RUN apt-get update && apt-get install -y \
    git build-essential curl python3 python3-venv python3-pip \
    clang clang-tidy lldb gdb valgrind cmake ninja-build verilator \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /workspace
