#!/bin/bash
a2ensite site1.net site2.net
service apache2 reload
cat /etc/hosts | grep 0.2
apachectl -D FOREGROUND