# HTTP

Via NC podemos analisar melhor o que acontece em uma requisição HTTP.

```
nc -v site.com 80  
GET / HTTP/1.0
```

O retorno será paracido com:  
```
HTTP/1.1 200 OK  
...  
...  
Server: Apache/2.2.22 (Debian)  
...  
...  
Código da página normalmente em HTML  
```  

Para retornar apenas o HEAD:  
```
nc -v site.com 80  
HEAD / HTTP/1.0
```  

### Lista de erros:  
1xx - Informação  
2xx - Sucesso  
3xx - Redirecionamento  
4xx - Erro no cliente  
5xx - Erro no servidor  

#### Exemplos:  
200 OK  
302 Moved Temporarily  
404 Not Found  
*DDOS pode causar o erro 5xx.  
