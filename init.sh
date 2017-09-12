#!/bin/bash
/usr/bin/mysqld_safe &
sleep 5
mysql -u root -e "CREATE USER 'rubis'@'%' IDENTIFIED BY 'rubis'"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'rubis'@'%' IDENTIFIED BY 'rubis' WITH GRANT OPTION"
mysql -u root -e "CREATE USER 'rubis'@'localhost' IDENTIFIED BY 'rubis'"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'rubis'@'localhost' IDENTIFIED BY 'rubis' WITH GRANT OPTION"
mysql -u root -e "CREATE DATABASE rubis"
mysql -u root rubis < /opt/rubis/database/rubis.sql
mysql -u root rubis < /opt/rubis/database/test.sql
