FROM node:10.14-stretch-slim

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm install

COPY index.js .
COPY server.js .
COPY db.js .
COPY presupuestoModel.js .
COPY userModel.js .
COPY indexRouter.js .
COPY userCtrl.js .
COPY presupuestoCtrl.js .
COPY passportConfig.js .
COPY jwtHelper.js .
COPY dist dist

#RUN ng build --prod
ENV NODE_ENV=production

EXPOSE 3000
CMD npm start