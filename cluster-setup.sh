sudo rabbitmqctl -n roger stop_app
sudo rabbitmqctl -n roger join_cluster peter@ubuntu-xenial
sudo rabbitmqctl -n roger start_app

sudo rabbitmqctl -n bugs stop_app
sudo rabbitmqctl -n bugs join_cluster peter@ubuntu-xenial
sudo rabbitmqctl -n bugs start_app
