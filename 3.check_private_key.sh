#!/bin/bash

if [ $# -ne 1 ]
	then
		echo 'Needs to supply argument'
		echo '  $1 = private key'
		exit 1
fi

openssl rsa -in ${1} -text -noout
 
