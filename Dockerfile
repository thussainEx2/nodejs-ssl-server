FROM public.ecr.aws/docker/library/alpine:latest

WORKDIR /nodejs-docker-aws-ecs

COPY package.json .

RUN npm install && npm install express

COPY . .

EXPOSE 3000

CMD [ "node", "app.js" ]
