# Guia de Introdução ao Docker

## O que é Docker?

Docker é uma plataforma que permite criar, testar e implantar aplicações rapidamente. O Docker empacota software em unidades padronizadas chamadas containers, que têm tudo o que o software precisa para funcionar, incluindo bibliotecas, ferramentas de sistema, código e runtime.

## O que são Containers?

Containers são pacotes de software que contêm tudo o que uma aplicação precisa para funcionar. Eles são leves, portáteis e garantem que a aplicação funcione da mesma maneira, independentemente do ambiente em que está sendo executada.

## O que é um Dockerfile?

Um Dockerfile é um script de texto que contém uma série de comandos que o Docker usa para montar uma imagem. Ele define o ambiente no qual a aplicação será executada e as etapas necessárias para configurá-lo.

### Exemplo de Dockerfile

```dockerfile
# Usando a imagem base do Nginx
FROM nginx:latest

# Definindo o diretório de trabalho
WORKDIR /app

# Atualizando pacotes e instalando o Vim
RUN apt-get update && \
    apt-get install vim -y

# Copiando arquivos HTML para o diretório padrão do Nginx
COPY html/ /usr/share/nginx/html
```

## Publicando uma Imagem no DockerHub

### Passo 1: Criar uma Conta no DockerHub

Acesse [DockerHub](https://hub.docker.com/) e crie uma conta.

### Passo 2: Fazer Login no DockerHub via Terminal

```sh
docker login
```

### Passo 3: Construir a Imagem Docker

Navegue até o diretório onde está o seu Dockerfile e execute:

```sh
docker build -t meu-usuario/meu-repositorio:tag .
```

### Passo 4: Taguear a Imagem

```sh
docker tag meu-usuario/meu-repositorio:tag meu-usuario/meu-repositorio:tag
```

### Passo 5: Publicar a Imagem no DockerHub

```sh
docker push meu-usuario/meu-repositorio:tag
```

Agora sua imagem está publicada no DockerHub e pode ser acessada por qualquer pessoa com a URL `docker pull meu-usuario/meu-repositorio:tag`.
```

Este README.md fornece uma introdução ao Docker, explica o que são containers e Dockerfiles, e dá um exemplo prático de como criar e publicar uma imagem Docker no DockerHub.