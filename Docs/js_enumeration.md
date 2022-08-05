# Enumeração de Javascript

A enumeração de Javascript tem como objetivo o levantamento de links dentro de scripts JS e podem trazer informações valiosas.

Extraindo Javascripts:

```bash
gau -subs fitbit.com | grep -iE '\.js' | grep -iEv '(\.jsp|.json)' >> js.txt
```

Verificando se os Jascripts ainda estão ativos:

```bash
cat js.txt | anti-burl | awk '{print $4}' | anew alivejs.txt
```

Efetuando a enumeração com [linkfinder](https://github.com/GerbenJavado/LinkFinder):

```bash
xargs -a alivejs.txt -n 2 -I@ bash -c "echo -e '\n[URL]: @\n'; python3 /root/programs/js/linkfinder.py -i @ -o cli"

# Talvez possa ser substituído por:
for x in $(cat alivejs.txt); do echo -e '\n[URL]: $x\n'; python3 /root/programs/js/linkfinder.py -i $x -o cli
```

Efetuando a enumeração com [collector](https://raw.githubusercontent.com/m4ll0k/BBTz/master/collector.py):

```bash
cat alivejs.txt | python3 /root/programs/js/collector.py output
```
