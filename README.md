# 備忘録

## x.509 v3 certificationまわりのヘルパーコマンド

### keygen

```
openssl req -newkey rsa:2048 -nodes -keyout key.pem -x509 -days 365 -out certificate.pem
```

### check pub key info

```
openssl x509 -in ./certificate.pem -text -noout
```

### check private key info

```
openssl rsa -in key.pem -text -noout
```

### リモートサーバーのパブリック証明書を取得

```bash
#!/bin/bash

if [ $# -ne 1 ]
	then
		echo 'Needs to supply argument'
		echo '  $1 = server'
		exit 1
fi

openssl s_client -showcerts -connect ${1}:443 </dev/null 2>/dev/null |openssl x509 -outform PEM >mycertfile.pem 
```

## 参考

[https://www.hashicorp.com/resources/hashitls-demystifying-security-certs?fbclid=IwAR0r_61CbJNdV-_b2FSxNCpn-rx9110lLDB3FPpRL_Cls6wVEhkLJ0AqLRQ](https://www.hashicorp.com/resources/hashitls-demystifying-security-certs?fbclid=IwAR0r_61CbJNdV-_b2FSxNCpn-rx9110lLDB3FPpRL_Cls6wVEhkLJ0AqLRQ)
