FROM node:10

WORKDIR /usr/src/lafs

COPY package*.json ./

RUN npm install -g @angular/cli@v6-lts

RUN npm install

COPY . .

EXPOSE 4200

CMD ng serve --host 0.0.0.0

