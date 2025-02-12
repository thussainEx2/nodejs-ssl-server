FROM public.ecr.aws/docker/library/node:18-alpine

WORKDIR /nodejs-docker-aws-ecs

COPY package.json package-lock.json* ./

RUN npm install --only=production

COPY . .

EXPOSE 3000

CMD ["node", "app.js"]
