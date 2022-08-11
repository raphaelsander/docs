# Notify

<https://github.com/projectdiscovery/notify>

Instalação:

```bash
go install -v github.com/projectdiscovery/notify/cmd/notify@latest
```

Configurando:

```bash
cat << EOF > $HOME/.config/notify/provider-config.yaml
telegram:
  - id: "tel"
    telegram_api_key: "XXXXXXXXXXXX"
    telegram_chat_id: "XXXXXXXX"
    telegram_format: "{{data}}"
EOF
```

Sobre bots no Telegram: <https://core.telegram.org/bots#3-how-do-i-create-a-bot>

Editando a crontab:

```bash
crontab -e
```

Adicione a nossa automatização com o uso do notify:

```bash
59 10 * * * nuclei -update-templates; echo "INFO: nuclei atualizado" | /usr/bin/notify >/dev/null 2>&1 >/dev/null 2>&1
```

Caso necessário, utilize o site <https://crontab-generator.org/> para auxiliar na configuração do crontab.
