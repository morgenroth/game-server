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
mkdir -p /data/logs

[ -e '/data/teamspeak/query_ip_whitelist.txt' ] || touch /data/teamspeak/query_ip_whitelist.txt
[ -e '/data/teamspeak/query_ip_blacklist.txt' ] || touch /data/teamspeak/query_ip_blacklist.txt

# ut2004
mkdir -p /data/ut2004/redirect
mkdir -p /data/ut2004/demos
mkdir -p /data/ut2004/conf
cp server-*.ini /data/ut2004/conf/

# web-server
mkdir -p /data/download

# start-up all containers
docker-compose up -d
