FROM node:17.8.0-alpine3.14

# Crear grupo y usuario
RUN addgroup -S devops && adduser -S devops -G devops

RUN mkdir /home/app

WORKDIR /home/app

COPY /app/package.json .
COPY /app/package-lock.json .

# Setear las propiedades de acceso
RUN chown -R devops:devops /home/app

USER devops
RUN ls -ltr

RUN npm install --production

COPY ./app /home/app

CMD ['npm', 'start']

EXPOSE 3000