# Використаємо офіційний Node.js образ
FROM node:18

# Робоча директорія всередині контейнера
WORKDIR /usr/src/app

# Скопіювати package.json і package-lock.json
COPY package*.json ./

# Встановити залежності
RUN npm install

# Скопіювати весь код
COPY . .

# Відкрити порт
EXPOSE 3000

# Команда запуску
CMD ["npm", "run", "start:dev"]