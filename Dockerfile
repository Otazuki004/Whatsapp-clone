FROM node
WORKDIR /LinkUp
COPY package*.json ./
RUN npm install
RUN npx run convex
RUN npm run build
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
