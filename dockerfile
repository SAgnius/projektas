FROM node:18              	# Naudojam oficialų Node.js atvaizdą
WORKDIR /app              	# Nustatome darbo katalogą konteineryje
COPY package*.json ./     	# Kopijuojame package.json ir lock failą
RUN npm install          	 	# Įdiegiame priklausomybes
COPY . .                  		# Kopijuojame visą likusį projektą
EXPOSE 3000               		# Atidarom prievadą (portą), kurį naudoja Express
CMD ["node", "index.js"]  	# Komanda, kuri paleidžia aplikaciją

