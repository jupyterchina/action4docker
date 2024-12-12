FROM python:3.10-slim

# 设置工作目录
WORKDIR /app

# 安装系统依赖
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    cmake \
    python3-dev \
    gcc \
    g++ \
    gfortran \
    libopenblas-dev \
    liblapack-dev \
    pkg-config \
    wget \
    && rm -rf /var/lib/apt/lists/*

# 安装 ta-lib
RUN wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz && \
    tar -xzf ta-lib-0.4.0-src.tar.gz && \
    cd ta-lib/ && \
    ./configure --prefix=/usr && \
    make && \
    make install && \
    cd .. && \
    rm -rf ta-lib-0.4.0-src.tar.gz ta-lib/

# 复制requirements文件
COPY requirements.txt .

# 安装Python依赖
RUN pip install --no-cache-dir -r requirements.txt \
    && pip install --no-cache-dir \
    jupyterlab==4.1.2 \
    jupyter-server-proxy==4.1.2

# 设置工作目录
WORKDIR /workspace

# 设置环境变量
ENV JUPYTER_ENABLE_LAB=yes

# 暴露端口
EXPOSE 8888

# 启动JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]