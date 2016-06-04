#!/bin/sh
#

# teamspeak
mkdir -p /data/teamspeak
touch /data/teamspeak/ts3server.sqlitedb
mkdir -p /data/logs

touch /data/query_ip_whitelist.txt
touch /data/query_ip_blacklist.txt

# ut2004
mkdir -p /data/ut2004/redirect
mkdir -p /data/ut2004/demos
mkdir -p /data/ut2004/conf
cp server-*.ini /data/ut2004/conf/

# web-server
mkdir -p /data/download

