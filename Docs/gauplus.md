# GAUPLUS

## Descrição

<https://github.com/bp0lr/gauplus>

O gauplus é uma ferramenta que extrai urls de sites que fazem cache dos sites (wayback, otx, commoncrawl).

**DESCONTINUADO** e substituido pelo [gau](https://github.com/lc/gau)

## Comandos e Exemplos

Instalando gauplus:

```bash
go install github.com/bp0lr/gauplus@latest
sudo mv ~/go/bin/gauplus /usr/bin
```

Coletando js e salvando eliminando duplicados:

```bash
echo tesla.com | gauplus | grep -iE '\.js' | grep -iEv '(\.jsp|\.json)' | anew jstesla
```

```bash
gau -subs fitbit.com | grep -iE '\.js' | grep -iEv '(\.jsp|\.json)' >> js.txt
```
