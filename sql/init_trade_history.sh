#!/bin/bash

MYSQL_HOST="localhost"
MYSQL_USER="root"
MYSQL_PASS="shit"
MYSQL_DB="trade_history"

for i in `seq 0 99`   # <-- why is it bound to 99 , I think there's over the hundress of coins exists. It'wll changed in future, how about runtime table creation when another balance required.
do
    echo "create table balance_history_$i"
    mysql -h$MYSQL_HOST -u$MYSQL_USER -p$MYSQL_PASS $MYSQL_DB -e "CREATE TABLE balance_history_$i LIKE balance_history_example;"
done

for i in `seq 0 99`
do
    echo "create table order_history_$i"
    mysql -h$MYSQL_HOST -u$MYSQL_USER -p$MYSQL_PASS $MYSQL_DB -e "CREATE TABLE order_history_$i LIKE order_history_example;"
done

for i in `seq 0 99`
do
    echo "create table order_detail_$i"
    mysql -h$MYSQL_HOST -u$MYSQL_USER -p$MYSQL_PASS $MYSQL_DB -e "CREATE TABLE order_detail_$i LIKE order_detail_example;"
done

for i in `seq 0 99`
do
    echo "create table deal_history_$i"
    mysql -h$MYSQL_HOST -u$MYSQL_USER -p$MYSQL_PASS $MYSQL_DB -e "CREATE TABLE deal_history_$i LIKE deal_history_example;"
done
