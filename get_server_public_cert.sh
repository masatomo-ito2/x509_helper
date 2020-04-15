#!/bin/bash

if [ $# -ne 1 ]
	then
		echo 'Needs to supply argument'
		echo '  $1 = server'
		exit 1
fi

openssl s_client -showcerts -connect ${1}:443 </dev/null 2>/dev/null |openssl x509 -outform PEM >mycertfile.pem 
