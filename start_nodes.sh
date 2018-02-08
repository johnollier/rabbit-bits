sudo RABBITMQ_NODE_PORT=5673 RABBITMQ_SERVER_START_ARGS="-rabbitmq_management listener [{port,15673}]" RABBITMQ_NODENAME=peter rabbitmq-server -detached
sudo RABBITMQ_NODE_PORT=5674 RABBITMQ_SERVER_START_ARGS="-rabbitmq_management listener [{port,15674}]" RABBITMQ_NODENAME=roger rabbitmq-server -detached
sudo RABBITMQ_NODE_PORT=5675 RABBITMQ_SERVER_START_ARGS="-rabbitmq_management listener [{port,15675}]" RABBITMQ_NODENAME=bugs rabbitmq-server -detached

