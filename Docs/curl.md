# Curl

Fazendo uma requisição:  
```bash
curl -v site.com
```
---
Para trazer apenas o HEAD:  
```bash
curl --head site.com
```
---
Para retornar alguma variável, como por exemplo o código:  
```bash
curl -w "%{http_code}" site.com
```
Retorno: 200  

Para conferir as variáveis verifique a documentação em 'man curl'.  

---
Para trazer apenas a variável:  
```bash
curl -s -o /dev/null -w "%{http_code}" alvo.com
```