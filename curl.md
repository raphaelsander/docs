# Curl

Fazendo uma requisição:
curl -v site.com

Para trazer apenas o HEAD:
curl --head site.com

Para retornar alguma variável, como por exemplo o código:
curl -w "%{http_code}" site.com
Retorno: 200
* Para conferir as variáveis verifique a documentação em 'man curl'.

Para trazer apenas a variável:
curl -s -o /dev/null -w "%{http_code}" site.com

