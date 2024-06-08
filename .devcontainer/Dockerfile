# 使用指定的基础镜像
FROM mcr.microsoft.com/devcontainers/base:jammy

# 更改 Ubuntu 源为华为云镜像
RUN sudo sed -i "s@http://.*archive.ubuntu.com@http://mirrors.huaweicloud.com@g" /etc/apt/sources.list && \
    sudo sed -i "s@http://.*security.ubuntu.com@http://mirrors.huaweicloud.com@g" /etc/apt/sources.list && \
    sudo apt-get update

# 设置环境变量（可选）
ENV http_proxy=host.docker.internal:29759
