#!/bin/sh
#

# install docker compose
if [ ! -e '/usr/local/bin/docker-compose' ]; then
  curl -L https://github.com/docker/compose/releases/download/1.7.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
  chmod +x /usr/local/bin/docker-compose
fi

# teamspeak
mkdir -p /data/teamspeak
[ -e '/data/teamspeak/ts3server.sqlitedb' ] || touch /data/teamspeak/ts3server.sqlitedb
mkdir -p /data/teamspeak/logs
chown -R 503:503 /data/teamspeak

[ -e '/data/teamspeak/query_ip_whitelist.txt' ] || touch /data/teamspeak/query_ip_whitelist.txt
[ -e '/data/teamspeak/query_ip_blacklist.txt' ] || touch /data/teamspeak/query_ip_blacklist.txt

# ut2004
mkdir -p /data/ut2004/Redirect
mkdir -p /data/ut2004/Demos
mkdir -p /data/ut2004/Conf
cp server-*.ini /data/ut2004/Conf/

# web-server
mkdir -p /data/download

# start-up all containers
docker-compose up -d
