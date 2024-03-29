# HTTP

Via NC podemos analisar melhor o que acontece em uma requisição HTTP.

```bash
nc -v site.com 80
GET / HTTP/1.0
```

O retorno será paracido com:

```http
HTTP/1.1 200 OK  
...
...
Server: Apache/2.2.22 (Debian)
...
...
Código da página normalmente em HTML
```

Para retornar apenas o HEAD:

```bash
nc -v site.com 80
HEAD / HTTP/1.0
```  

## Lista de erros

100 Continue  
101 Switching Protocols  
103 Early Hints  
200 OK  
201 Created  
202 Accepted  
203 Non-Authoritative Information  
204 No Content  
205 Reset Content  
206 Partial Content  
300 Multiple Choices  
301 Moved Permanently  
302 Found  
303 See Other  
304 Not Modified  
307 Redirecionamento temporário  
308 Permanent Redirect  
400 Bad Request  
401 Unauthorized  
402 Payment Required  
403 Forbidden  
404 Not Found  
405 Method Not Allowed  
406 Not Acceptable  
407 Proxy Authentication Required  
408 Request Timeout  
409 Conflict  
410 Gone  
411 Length Required  
412 Precondition Failed  
413 Payload Too Large  
414 URI Too Long  
415 Unsupported Media Type  
416 Range Not Satisfiable  
417 Expectation Failed  
418 I'm a teapot  
422 Unprocessable Entity  
425 Too Early  
426 Upgrade Required  
428 Precondition Required  
429 Too Many Requests  
431 Request Header Fields Too Large  
451 Unavailable For Legal Reasons  
500 Internal Server Error  
501 Not Implemented  
502 Bad Gateway  
503 Service Unavailable  
504 Gateway Timeout  
505 HTTP Version Not Supported  
511 Network Authentication Required  

### Exemplos

200 OK  
302 Moved Temporarily  
404 Not Found  
*DDOS pode causar o erro 5xx.  
