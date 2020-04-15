#!/bin/bash

if [ $# -ne 1 ]
	then
		echo 'Needs to supply argument'
		echo '  $1 = server'
		exit 1
fi

openssl s_client -connect ${1}:443 -showcerts 
