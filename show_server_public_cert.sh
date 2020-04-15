#!/bin/bash

#if [ $# -nq 0 ]
#	then
#		echo 'Needs to supply argument'
#		echo '  $1 = <arg>'
#		exit 1
#fi

openssl s_client -connect masatomo.ito:443 -showcerts 
