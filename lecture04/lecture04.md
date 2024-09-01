## 第 4 回課題提出

### VPC の作成

- 作成した VPC の情報
  ![vpc](image/vpc.png)

- VPC 内のサブネットのサブネット ID
  ![alt text](image/subnet.png)

### EC2 の作成

- 作成した EC2 の情報
  ![ec2](image/ec2.png)

- EC2 のセキュリティグループ情報

  - インバウンドルールは自分の IP アドレスからの SSH 接続のみ許可

  ![ec2_sg](image/ec2_sg.png)

### RDS の作成

- 作成した RDS の情報
  ![rds_new](image/rds_new.png)

- RDS のセキュリティーグループ情報

  - インバウンドルールは EC2 に設定したセキュリティグループからの接続のみ許可

  ![rds_sg_in](image/rds_sg_inbound.png)
  ![rds_sg_out](image/rds_sg_outbound.png)

### EC ２から RDS への接続

![connect_rds_new](image/connect_rds_new.png)
