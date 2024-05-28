# 使用rabbitmq-management镜像作为基础镜像
FROM rabbitmq:RABBITMQ_VER-management

WORKDIR /plugins
COPY rabbitmq_delayed_message_exchange-DELAYED_PLUGIN.ez ./
# 启用rabbitmq_delayed_message_exchange插件
RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange

# 启动RabbitMQ服务器
CMD ["rabbitmq-server"]
