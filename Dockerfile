# 使用指定的基础镜像
FROM ghcr.io/open-webui/open-webui:ollama

# 设置工作目录
WORKDIR /app

# 复制启动脚本或其他必要文件到容器内
COPY ./start.sh /app/start.sh

# 给予脚本执行权限
RUN chmod +x /app/start.sh

# 暴露端口
EXPOSE 3000

# 设置容器启动时执行的命令
CMD ["/bin/bash", "/app/start.sh"]
