# Rancher

## Instalação

Para instalar e executar o Rancher, execute os comandos Docker em seu host:

```bash
sudo docker run --privileged -d --restart=unless-stopped -p 80:80 -p 443:443 rancher/rancher
```

Para acessar o Rancher use o IP do host onde foi instalado.

Referência: <https://rancher.com/docs/rancher/v2.x/en/quick-start-guide/deployment/quickstart-manual-setup/>
