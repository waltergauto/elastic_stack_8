#!/bin/bash

### Import GPG Key
sudo rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch

### Create elasticsearch repo file
echo "
[elasticsearch]
name=Elasticsearch repository for 8.x packages
baseurl=https://artifacts.elastic.co/packages/8.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md
" | sudo tee /etc/yum.repos.d/elasticsearch.repo

### Create kibana repo file
echo "
[kibana]
name=Kibana repository for 8.x packages
baseurl=https://artifacts.elastic.co/packages/8.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md
" | sudo tee /etc/yum.repos.d/kibana.repo

### Create logstash repo file
echo "
[kibana]
name=Logstash repository for 8.x packages
baseurl=https://artifacts.elastic.co/packages/8.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md
" | sudo tee /etc/yum.repos.d/logstash.repo

### Create logstash repo file
echo "
[kibana]
name=Filebeat repository for 8.x packages
baseurl=https://artifacts.elastic.co/packages/8.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md
" | sudo tee /etc/yum.repos.d/filebeat.repo

### Install elasticsearch
sudo yum install -y --enablerepo=elasticsearch elasticsearch

### Install kibana
sudo dnf install -y kibana

### Install logstash
sudo dnf install -y logstash

### Install filebeat
sudo dnf install -y filebeat

### Start and enable elasticsearch
#sudo systemctl start --now elasticsearch

### Start and enable kibana
#sudo systemctl start --now kibana

### Start and enable filebeat
#sudo systemctl start --now filebeat
