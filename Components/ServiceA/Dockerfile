ARG NODE_IMAGE_VERSION
FROM $NODE_IMAGE_VERSION

RUN userdel -r node; exit 0 u
RUN useradd --user-group --create-home --shell /bin/false app

ENV APP_NAME ServiceA
ENV HOME=/home/app
ENV NODE_PATH=$HOME/$APP_NAME/node_modules

ADD package.json $HOME/$APP_NAME/
ADD package-lock.json $HOME/$APP_NAME/
RUN chown -R app:app $HOME/*
USER app
WORKDIR $HOME/$APP_NAME
RUN npm install && npm cache clean --force

CMD ["node", "./app.js"]
