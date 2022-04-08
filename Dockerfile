FROM node:17.8.0-alpine3.14

# Crear grupo y usuario
RUN addgroup -S devops && adduser -S devops -G devops

RUN mkdir /home/app

# Setear las propiedades de acceso
RUN chown -R devops:devops /home/app

USER devops

WORKDIR /home/app

COPY /app/package.json /app/package-lock.json .

RUN npm install --production

COPY ./app /home/app

CMD ['npm', 'start']

EXPOSE 3000