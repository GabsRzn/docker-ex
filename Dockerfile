#Use uma imagem do Node.js como base
FROM node:18-alpine

#Defina o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

#Copie o arquivo package.json e package-lock.json para o diretório de trabalho
COPY package*.json ./

#Instale as dependências
RUN npm install

#Copie todo o código-fonte para o diretório de trabalho
COPY . .

#Exponha a porta 3000 (a mesma porta definida no index.js)
EXPOSE 3000

#Comando para iniciar o aplicativo quando o contêiner for executado
CMD ["npm", "start"]