# Terraform

Iniciando projeto e baixando as dependências:

```bash
terraform init
```

Efetuando planejamento:

```bash
terraform plan
```

Aplicando o planejamento:

```bash
terraform apply
```

Mostrar como está o provisionamento do ambiente:

```bash
terraform show
```

Destruindo recurso:

```bash
terraform destroy -target aws_instance.dev4
```

Destruir toda a infra provisionada:

```bash
terraform destroy
```

Atualizar os dados locais:

```bash
terraform refresh
```

*Também utilizado para pegar informações de output.*
