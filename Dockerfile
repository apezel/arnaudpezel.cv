FROM domjtalbot/volta:latest AS builder
WORKDIR /home
COPY package.json .
RUN volta setup
RUN npm install
COPY .postcssrc *.json *.js ./
COPY src ./src
RUN npx parcel build src/index.html

# --


FROM nginx  
COPY --from=builder /home/dist /usr/share/nginx/html/
EXPOSE 80