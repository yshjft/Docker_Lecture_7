FROM node:alpine as builder

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

COPY ./ ./

# build 폴더 생성
RUN npm run build

FROM nginx

#컨테이너에서 매핑을 할 네트워크 포트 정의
EXPOSE 80

COPY --from=builder /usr/src/app/build /usr/share/nginx/html