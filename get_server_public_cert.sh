#!/bin/bash

#if [ $# -nq 0 ]
#	then
#		echo 'Needs to supply argument'
#		echo '  $1 = <arg>'
#		exit 1
#fi

openssl s_client -showcerts -connect masatomo.ito:443 </dev/null 2>/dev/null |openssl x509 -outform PEM >mycertfile.pem 
