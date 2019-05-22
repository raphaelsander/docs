# OPENSSL

Para efetuar um Banner Grabbing HTTPs não é possível utilizar o NETCAT, porém podemos utilizar o OPENSSL.

openssl s_client -quiet -connect www.alvo.com:443
HEAD / HTTP/1.0
