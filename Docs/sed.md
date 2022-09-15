# SED

Substituindo a string **true** por **false** dentro de um arquivo:

```bash
sed 's/true/false' config.cnf
```

*O parâmetro **s** é para substituição de string.*

Para usos mais complexos o uso extendido de expressões regulares é aconselhado:

```bash
# Remove a string do meio dos colchetes
$ echo '![teste](teste) ![teste123*](teste)' | sed -E 's/[[a-zA-Z0-9*]+]/[]/g'
![](teste) ![](teste)
```

Use esse site para expressões regulares mais complexas: <https://regex-generator.olafneumann.org/>
