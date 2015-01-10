#! /bin/sh

cd /opt/CouchPotatoServer
touch /mnt/config/CouchPotato.cfg

/usr/bin/python /opt/CouchPotatoServer/CouchPotato.py --config_file /mnt/config/CouchPotato.cfg --console_log