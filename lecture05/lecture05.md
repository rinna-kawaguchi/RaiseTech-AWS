## 第 5 回課題提出

### サンプルアプリケーションのデプロイ

#### 組み込みサーバー(Puma)のみ使用

![run_only_puma](image/run_only_puma.png)
![app_only_puma](image/app_puma_only.png)

#### Nginx、組み込みサーバー、Unix Socket を使用

![run_nginx_socket_puma](image/run_nginx_socket_puma.png)
![app_nginx_socket_puma](image/app_nginx_socket_puma.png)

### ELB(ALB)追加

![app_alb](image/app_alb.png)

### S3 追加

![s3_list](image/s3_list.png)
![s3_image](image/s3_image.png)

### 構成図

![diagram](image/diagram.png)
