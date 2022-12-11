# Kubernetes

## Introdução
Kubernetes é um poderoso sistema open-source, inicialmente desenvolvido pelo Google, para o gerenciamento de aplicações em container em um ambiente clusterizado. Ele visa fornecer melhores maneiras de gerenciar componentes e serviços relacionados e distribuídos em diversas infraestruturas.

Neste guia, vamos discutir alguns conceitos básicos do Kubernetes. Vamos falar sobre a arquitetura do sistema, os problemas que ele resolve, e o modelo que ele utiliza para tratar deployments em container e escalabilidade.

## Cluster up and running

Para utilizar o Kubernetes é necessário verificar se na máquina host ele está instalado através do seguinte comando:

```bash
minikube version
```

Executando um cluster:

```bash
minikube start
```

Verificando a versão do kubectl e outras informações relevantes:

```bash
kubectl version
```

Verificando detalhes do cluster:

```bash
kubectl cluster-info
```

Verificando todos os hosts diponíveis para sua aplicação:

```bash
kubectl get nodes
```

*É possível verificar também o status do host.*

Para mais opções no listar os nodes:

```bash
kubectl get nodes --help
```

## Log

Checando os logs de determinado POD quando possui apenas um container (1/1):

```bash
# kubectl -n <NAMESPACE> logs <POD>
kubectl -n web logs nginx
```

*Lembrando que esse comando irá exibir os logs do início ao fim, ocorrendo casos em que o log possui muitas linhas, talvez o terminal não tenha suporte, fazendo se necessário enviar os logs pra algum arquivo para que possa ser analisado depois.*

Checando os logs de determinado POD quando possui mais de um container (n/n):

```bash
# kubectl -n <NAMESPACE> logs <POD> -c <CONTAINER>
kubectl -n web logs nginx -c fluentbit
```
