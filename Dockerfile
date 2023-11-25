FROM node

WORKDIR /home/app

COPY package.json /home/app/
COPY package-lock.json /home/app/
COPY . /home/app/

EXPOSE 4444

RUN npm i

CMD [ "node", "index.js"]