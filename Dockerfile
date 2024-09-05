FROM domjtalbot/volta:latest AS builder
COPY package.json .
RUN volta setup
RUN npm install
COPY .postcssrc *.json *.js ./
COPY src ./src
RUN npx parcel build src/index.html

# --


FROM nginx  
COPY --from=builder dist /usr/share/nginx/html/
EXPOSE 80