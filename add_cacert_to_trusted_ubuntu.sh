#!/bin/bash

if [ $# -ne 1 ]
	then
		echo 'Needs to supply argument'
		echo '  $1 = cacert (.pem)'
		exit 1
fi

sudo cp ${1} /usr/share/ca-certificates
echo ${1} | sudo tee -a /etc/ca-certificates.conf
sudo update-ca-certificates
