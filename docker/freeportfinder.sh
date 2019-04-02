#! /bin/bash

DIR=$1

find_free_port() {
    res=""
    for port in {10001..15000} ; do
        (echo '' >/dev/tcp/localhost/$port) >/dev/null 2>&1 || { res=$port; break; } ;
    done
    echo "$res"
}

myport=$(find_free_port)

echo $myport

