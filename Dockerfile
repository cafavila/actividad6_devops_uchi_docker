FROM node:17.8.0-alpine3.14

# Crear grupo y usuario
RUN groupadd -r devops && useradd -g devops devops

# Setear las propiedades de acceso
RUN chown -R devops:devops /app

USER devops

RUN mkdir /home/app

WORKDIR /home/app

COPY /app/package.json /app/package-lock.json .

RUN npm install --production

COPY ./app /home/app

CMD ['npm', 'start']