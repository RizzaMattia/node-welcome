# Usa un'immagine di base ufficiale di Node.js
FROM node:18

# Crea una directory nell'immagine
WORKDIR /usr/src/app

# Copia il package.json e package-lock.json (se esiste) nel container
COPY package*.json ./

# Installa le dipendenze
RUN npm install

# Copia il resto dei file nell'immagine
COPY . .

# Espone la porta 3000
EXPOSE 3000

# Comando per eseguire l'app
CMD [ "node", "app.js" ]
