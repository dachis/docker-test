FROM node:16.14.2-alpine
WORKDIR /app/myapp/myapp

# パッケージインストールのためのコマンド追加
COPY ./app/myapp/myapp/package.json ./app/myapp/myapp/yarn.lock ./
RUN yarn install --frozen-lockfile
# 全ファイルをコピー
COPY ./app/myapp/myapp ./

CMD [ "yarn", "build" ]