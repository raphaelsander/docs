# sdlookup

<https://github.com/j3ssie/sdlookup>

Essa ferramenta é responsável por fazer procuras de um determinado IP no site <shodan.io>.

Instalação:

```bash
go install github.com/j3ssie/sdlookup@latest
mv ~/go/bin/sdlookup /usr/bin
```

Uso básico:

```bash
echo 131.221.240.56 | sdlookup
echo 131.221.240.0/22 | sdlookup
```

Uso automatizado com apenas um domínio:

```bash
echo terra.com.br | httpx -silent -ip | awk '{print $2}' | tr -d '[]' | xargs -I@ sh -c 'echo @ | sdlookup -json | python3 -m json.tool'
```

Uso automatizado com vários subdomínios:

```bash
echo inatel.br | subfinder -silent | httpx -silent -ip | awk '{print $2}' | tr -d '[]' | xargs -I@ sh -c 'echo @ | sdlookup -json | python3 -m json.tool'
```
