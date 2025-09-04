
FROM node:18

# Робоча директорія
WORKDIR /usr/src/app

# Спочатку копіюємо package.json, щоб кешувати залежності
COPY package*.json ./

# Встановлюємо NestJS CLI глобально (щоб працював start:dev)
RUN npm install -g @nestjs/cli

# Встановлюємо залежності
RUN npm install

# Копіюємо весь проєкт
COPY . .

# Відкриваємо порт
EXPOSE 3000

# Запускаємо у dev режимі
CMD ["npm", "run", "start:dev"]