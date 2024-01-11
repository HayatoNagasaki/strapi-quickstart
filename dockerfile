FROM node:18.12.1

# ディレクトリをコンテナ上に作成
RUN mkdir /app
# コンテナ上の作業ディレクトリを変更
WORKDIR /app
# カレントディレクトリにある資産をコンテナ上の指定のディレクトリにコピーする
ADD . /app

# updateとupgrade
RUN apt-get update
RUN apt upgrade -y

# vimをインストールする
RUN apt install vim -y

# logsディレクトリを作成
CMD mkdir logs

RUN npm install

CMD npm run develop
