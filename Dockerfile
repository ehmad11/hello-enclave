FROM node:16

RUN mkdir -p /app
WORKDIR /app

# COPY package*.json ./
# RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

COPY . .

CMD [ "/app/run.sh" ]
