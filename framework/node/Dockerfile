# Usando a imagem base do Node.js versão 15
FROM node:15

# Definindo o diretório de trabalho para /usr/src/app
WORKDIR /usr/src/app

# Copiando todos os arquivos do diretório atual para o diretório de trabalho no contêiner
COPY . .    

# Expondo a porta 3000 para permitir o acesso externo ao contêiner
EXPOSE 3000

# Definindo o comando padrão para iniciar a aplicação Node.js
CMD [ "node", "index.js" ]