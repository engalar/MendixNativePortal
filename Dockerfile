# 设置版本变量
ARG MX_VER=9.24.12.20495
# ARG MX_VER=9.18.4.62522
ARG MPR_FILE=NativePortal.mpr
ARG TPL_VERSION=v6.3.5
FROM mcr.microsoft.com/devcontainers/base:jammy

# 设置环境变量
ENV http_proxy=http://host.docker.internal:29758

# 设置清华镜像作为软件包源

RUN sed -i 's/archive.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list

# 更新apt并安装必要的包
RUN apt-get update && \
    apt-get install -y mono-complete openjdk-11-jdk wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 下载并解压mxbuild
RUN wget https://cdn.mendix.com/runtime/mxbuild-$MX_VER.tar.gz && \
    tar -xzf mxbuild-$MX_VER.tar.gz -C /opt && \
    rm mxbuild-$MX_VER.tar.gz

# 使用mono运行mxbuild
# RUN mono /opt/mxbuild-$MX_VER/modeler/mxbuild.exe --target=deploy --native-packager --loose-version-check --java-home="/usr/lib/jvm/java-11-openjdk-amd64/" --java-exe-path="/usr/lib/jvm/java-11-openjdk-amd64/bin/java" $MPR_FILE

# 克隆native-template仓库
# RUN git clone --depth 1 --branch $TPL_VERSION https://github.com/mendix/native-template.git /workspaces/native-template
# RUN git clone --depth 1 --branch $TPL_VERSION https://github.com/mendix/native-template.git /workspaces/native-template && \
#     cp -R deployment/native/bundle/android/* /workspaces/native-template/android/app/src/main

# 构建Android项目
# RUN cd /workspaces/native-template/android && ./gradlew assembleDebug
