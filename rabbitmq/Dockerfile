FROM rabbitmq:4.2-management

ADD migrations /etc/rabbitmq/definitions

RUN rabbitmq-plugins enable --offline rabbitmq_management rabbitmq_shovel rabbitmq_shovel_management

CMD ["rabbitmq-server"]
