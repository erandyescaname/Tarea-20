#!/bin/bash

#usar sudo para cambiar los permisos de ejecucion

function is_alive_ping() {
	ping -c 1 $1 > /dev/null 2>&1
	[ $? -eq 0 ] && echo "Node with IP: $1 is up."
}
for i in 192.168.100.{1..255}
do
is_alive_ping $i & disown
done

