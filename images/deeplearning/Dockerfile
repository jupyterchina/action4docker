FROM tensorflow/tensorflow:2.15.0-gpu

# 设置工作目录
WORKDIR /app

# 安装系统依赖
RUN apt-get update && apt-get install -y \
    git \
    wget \
    && rm -rf /var/lib/apt/lists/*

# 安装Python依赖
RUN pip install --no-cache-dir \
    torch==2.2.1 \
    torchvision==0.17.1 \
    transformers==4.38.2 \
    jupyterlab==4.1.2 \
    jupyter-server-proxy==4.1.2 \
    matplotlib==3.8.3 \
    seaborn==0.13.2 \
    scikit-learn==1.2.2 \
    pandas==2.2.1 \
    numpy==1.26.4

# 设置工作目录
WORKDIR /workspace

# 设置环境变量
ENV JUPYTER_ENABLE_LAB=yes

# 暴露端口
EXPOSE 8888

# 启动JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]