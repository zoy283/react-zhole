FROM node:16.15.0

WORKDIR /app

COPY . /app

RUN npm install >/dev/null 2>&1 \
    &&  VERSION_NUMBER="v$(grep -oP '"version": "\K[^"]+' package.json | head -n1)" >/dev/null 2>&1 \
    &&  REACT_APP_BUILD_INFO=$VERSION_NUMBER npm run build >/dev/null 2>&1