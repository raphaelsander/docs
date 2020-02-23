# Debian Package

Arquivo padrão de configuração de repositório:  
**/etc/apt/source.list**  

Procurar atualizações:

```bash
apt update
```

```bash
apt-get update
```

Atualizar os pacotes:

```bash
apt upgrade
```

```bash
apt-get upgrade
```

Procurar um pacote:

```bash
apt search php7
```

```bash
apt search vnc
```

Instalar um determinado pacote:

```bash
apt install xvnc4viewer
```

```bash
apt-get install vlc
```

*Passando o parâmetro **-y** a confirmação de instalação não será necessária.*

Remover um pacote:

```bash
apt remove vlc
```

```bash
apt-get remove xvnc4viewer
```

Instalar um pacote **.deb**:

```bash
dpkg -i pacote.deb
```

Ver todos os pacotes instalados:

```bash
dpkg -l
```
