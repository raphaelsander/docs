# StdErr e StdOut

| Sintaxe        | StdOut p/ Terminal | StdErr p/ Terminal | StdOut p/ Arquivo | StdErr p/ Arquivo | Arquivo    |
| -------------- | ------------------ | ------------------ | ----------------- | ----------------- | ---------- |
| ``>``          | não                | sim                | sim               | não               | substitui  |
| ``>>``         | não                | sim                | sim               | não               | incrementa |
| ``2>``         | sim                | não                | não               | sim               | substitui  |
| ``2>>``        | sim                | não                | não               | sim               | incrementa |
| ``&>``         | não                | não                | sim               | sim               | substitui  |
| ``&>>``        | não                | não                | sim               | sim               | incrementa |
| ``\| tee``     | sim                | sim                | sim               | não               | substitui  |
| ``\| tee -a``  | sim                | sim                | sim               | não               | incrementa |
| N/A            | sim                | sim                | não               | sim               | substitui  |
| N/A            | sim                | sim                | não               | sim               | incrementa |
| ``\|& tee``    | sim                | sim                | sim               | sim               | substitui  |
| ``\|& tee -a`` | sim                | sim                | sim               | sim               | incrementa |

## Exemplos

```bash
command > output.txt
```

O fluxo de saída padrão será redirecionado apenas para o arquivo, não será visível no terminal. Se o arquivo já existir, ele será substituído.

---

```bash
command >> output.txt
```

O fluxo de saída padrão será redirecionado apenas para o arquivo, não será visível no terminal. Se o arquivo já existir, os novos dados serão anexados ao final do arquivo.

---

```bash
command 2> output.txt
```

O fluxo de erro padrão será redirecionado apenas para o arquivo, não será visível no terminal. Se o arquivo já existir, ele será substituído.

---

```bash
command 2>> output.txt
```

O fluxo de erro padrão será redirecionado apenas para o arquivo, não será visível no terminal. Se o arquivo já existir, os novos dados serão anexados ao final do arquivo.

---

```bash
command &> output.txt
```

Tanto a saída padrão quanto o fluxo de erro padrão serão redirecionados apenas para o arquivo, nada será visível no terminal. Se o arquivo já existir, ele será substituído.

---

```bash
command &>> output.txt
```

Tanto a saída padrão quanto o fluxo de erro padrão serão redirecionados apenas para o arquivo, nada será visível no terminal. Se o arquivo já existir, os novos dados serão anexados ao final do arquivo.

---

```bash
command | tee output.txt
```

O fluxo de saída padrão será copiado para o arquivo, ele ainda estará visível no terminal. Se o arquivo já existir, ele será substituído.

---

```bash
command | tee -a output.txt
```

O fluxo de saída padrão será copiado para o arquivo, ele ainda estará visível no terminal. Se o arquivo já existir, os novos dados serão anexados ao final do arquivo.

---

### N/A

O Bash não tem sintaxe abreviada que permite canalizar apenas StdErr para um segundo comando, que seria necessário aqui em combinação com tee novamente para completar a tabela. Se você realmente precisa de algo assim, veja "How to pipe stderr, and not stdout?" no Stack Overflow para algumas maneiras de como isso pode ser feito, por exemplo trocando fluxos ou usando substituição de processo.

---

```bash
command |& tee output.txt
```

Tanto a saída padrão quanto os fluxos de erro padrão serão copiados para o arquivo enquanto ainda estiverem visíveis no terminal. Se o arquivo já existir, ele será substituído.

---

```bash
command |& tee -a output.txt
```

Tanto a saída padrão quanto os fluxos de erro padrão serão copiados para o arquivo enquanto ainda estiverem visíveis no terminal. Se o arquivo já existir, os novos dados serão anexados ao final do arquivo.
