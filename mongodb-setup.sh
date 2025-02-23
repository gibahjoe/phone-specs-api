#!/bin/sh
#https://docs.mongodb.com/manual/tutorial/install-mongodb-on-amazon/
cat > /etc/yum.repos.d/mongodb-org-4.4.repo << EOF
[mongodb-org-4.4]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/amazon/2/mongodb-org/4.4/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.4.asc
EOF
sudo yum install -y mongodb-org
sudo systemctl daemon-reload
sudo systemctl start mongod
