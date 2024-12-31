# ベースイメージとしてNode.jsを指定
FROM node:18-alpine

# 作業ディレクトリを設定
WORKDIR /app

# package.jsonとpackage-lock.jsonをコンテナにコピー
COPY package.json .

# 必要な依存関係をインストール
RUN npm install

# アプリケーションコードをコンテナにコピー
COPY . .

# コンテナ起動時に実行するコマンドを指定
CMD ["node", "index.js"]

# コンテナで使用するポートを指定 (必要に応じて)
EXPOSE 3000
