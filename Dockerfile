FROM nginx:latest

# Definir o diretório de trabalho, caso seja necessário
WORKDIR /app

# Instalar pacotes adicionais, se necessário
RUN apt-get update && \
    apt-get install -y vim

# Copiar arquivos HTML para o diretório padrão do Nginx
COPY html/ /usr/share/nginx/html

# Expor a porta padrão do Nginx (opcional, para documentação)
EXPOSE 80

# Definir o comando padrão para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
