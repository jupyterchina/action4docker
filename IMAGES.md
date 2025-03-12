# 可用镜像列表

本仓库提供以下预构建的数据科学环境镜像：

## 数据科学基础镜像

**镜像地址：** `ghcr.io/USERNAME/datascience:latest`

这是一个全功能的数据科学环境，包含：
- Python 3.10
- JupyterLab
- 常用数据科学库（NumPy, Pandas, Scikit-learn等）
- 金融分析工具（TA-Lib等）
- 数据可视化库（Matplotlib, Seaborn等）

## 深度学习镜像

**镜像地址：** `ghcr.io/USERNAME/deeplearning:latest`

专为深度学习优化的环境，包含：
- TensorFlow 2.15.0 (GPU支持)
- PyTorch 2.2.1
- Transformers
- JupyterLab
- 常用机器学习和数据处理库

## 使用方法

1. 拉取镜像：
```bash
docker pull [镜像地址]
```

2. 运行容器：
```bash
docker run -p 8888:8888 [镜像地址]
```

访问 http://localhost:8888 即可使用JupyterLab环境。