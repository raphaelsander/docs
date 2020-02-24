# Serviços

Iniciar um serviço:

```bash
service ssh start
```

```bash
service apache2 start
```

Parar um serviço:

```bash
service ssh stop
```

```bash
service apache2 stop
```

Reiniciar um serviço:

```bash
service ssh restart
```

```bash
service apache2 restart
```

---

Ativando um serviço para iniciar junto com o sistema:

```bash
update-rc.d ssh enable
```

```bash
update-rc.d apache2 enable
```

Desativando um serviço da inicialização:

```bash
update-rc.d ssh disable
```

```bash
update-rc.d apache2 disable
```
