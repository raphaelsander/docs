# Dirb

O Dirb é uma ferramenta para levantamento de diretórios em um servidor.

---
Procurando lista de arquivo ou pasta em um site:  
```bash
dirb http://teste.com.br/ wordlist.txt
```
*Wordlists padrões no diretório: /usr/share/dirb/wordlists/*

---
Para ignorar erros utilize o parâmetro **-w**:
```bash
dirb http://alvo.com.br/ wordlist.txt -w
```

---
Para salvar a saída utilize o parâmetro **-o**:
```bash
dirb http://alvo.com.br wordlist.txt -w -o log.txt
```
*O dirb só aceita salvar em alguns formatos de arquivos e o mais usual é o TXT.*
