# base image
FROM node:lts-slim

# Set working directory
WORKDIR /var/www/frontend

ENV PATH /var/www/frontend/node_modules/.bin:$PATH

COPY ./src/frontend /var/www/frontend

EXPOSE 3000

RUN npm init --yes
RUN npm install -g react-scripts
RUN npm install --save

CMD ["npm", "--", "start"]
