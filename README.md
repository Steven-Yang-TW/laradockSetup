## 修改 .env.example 然後複製到 laradock 底下然後改名為 .env
修改的部份如下
設定根目錄 若 Laradock 想要運行多個 laravel 專案，可設定為此
```
APP_CODE_PATH_HOST=../www
```

## 如果機器本身已經有 nginx, apache 或 traefik，請將 nginx container port 修改為:

```
NGINX_HOST_HTTP_PORT=7000
NGINX_HOST_HTTPS_PORT=4433
MYSQL_PORT=3305
PMA_USER=default
PMA_PASSWORD=secret
PMA_ROOT_PASSWORD=secret
PMA_PORT=6060
```

## 檢查laravel .env 的mysql 參數
MYSQL_VERSION=latest
MYSQL_DATABASE=default
MYSQL_USER=default
MYSQL_PASSWORD=secret
MYSQL_PORT=3305
MYSQL_ROOT_PASSWORD=root

## 修改 laravel.test.conf.example 然後複製到 laradock/nginx/sites 底下然後改名為 laravel.test.conf
修改的部份如下(設定讀取index.php的位置)

```
root /var/www/{專案名稱}/public;
```

## 啟動 Docker Image 為 Container
docker-compose up -d nginx mysql phpmyadmin