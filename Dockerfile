FROM node:lastest as build


WORKDIR /usr/local/app

COPY ./ /usr/local/app/

RUN npm install

RUN npm run build

FROM nginx:latest

COPY --from=build /usr/local/app/dist/foodieinc-user-app /usr/share/nginx/html


EXPOSE 80