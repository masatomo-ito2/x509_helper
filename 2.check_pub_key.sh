#!/bin/bash

if [ $# -ne 1 ]
	then
		echo 'Needs to supply argument'
		echo '  $1 = cert (pem)'
		exit 1
fi

openssl x509 -in ${1} -text -noout
 
