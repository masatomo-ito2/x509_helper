# 備忘録

x.509 v3 certificationまわりのヘルパーコマンド

1. keygen

openssl req -newkey rsa:2048 -nodes -keyout key.pem -x509 -days 365 -out certificate.pem

2. check pub key info

openssl x509 -in ./certificate.pem -text -noout

3. check private key info

openssl rsa -in key.pem -text -noout

