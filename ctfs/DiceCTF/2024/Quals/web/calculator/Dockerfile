FROM node:20-buster-slim

RUN apt-get update \
    && apt-get install -y python3 build-essential \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm i

COPY jail ./jail
COPY index.ts .

USER node

CMD ["npm", "start"]