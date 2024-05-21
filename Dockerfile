# 使用rabbitmq-management镜像作为基础镜像
FROM rabbitmq:3.13.2-management

WORKDIR /plugins
COPY rabbitmq_delayed_message_exchange-3.13.0.ez ./
# 启用rabbitmq_delayed_message_exchange插件
RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange

# 启动RabbitMQ服务器
CMD ["rabbitmq-server"]
