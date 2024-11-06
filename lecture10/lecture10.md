## 第 10 回課題

これまでに作った[環境](https://github.com/rinna-kawaguchi/RaiseTech-AWS/blob/main/lecture05/lecture05.md#%E6%A7%8B%E6%88%90%E5%9B%B3)を CloudFormation でコード化して自動作成。

### テンプレート

- ネットワーク関連(VPC): [network_template](template/cfn_network.yaml)
- IAM ロール: [role_template](template/cfn_iam_role.yaml)
- アプリケーション関連(EC2, RDS, ALB, S3): [application_template](template/cfn_application.yaml)

### テンプレートから作成されたリソース

#### VPC

![vpc](image/vpc.png)

#### IAM ロール

![role](image/role.png)

#### EC2

![ec2_instance](image/ec2_instance.png)

#### EC2 セキュリティグループ

![ec2_sg](image/ec2_sg.png)

#### RDS

![rds](image/rds.png)

#### RDS セキュリティグループ

![rds_sg_in](image/rds_sg_in.png)
![rds_sg_out](image/rds_sg_out.png)

#### ALB

![alb](image/alb.png)

#### ターゲットグループ

![targetgroup](image/tagetgroup.png)

#### ALB セキュリティグループ

![alb_sg_in](image/alb_sg_in.png)
![alb_sg_out](image/alb_sg_out.png)

#### S3 バケット

![s3_bucket](image/s3_bucket.png)

### 接続確認

#### EC2 から RDS へ接続

![ec2_rds](image/ec2_rds.png)

#### S3 から EC2 にオブジェクトをダウンロード

![s3_file](image/s3_file.png)
![ec2_s3](image/ec2_s3.png)

### 感想

用意されている設定項目が多く、記載要否やどのように記載するか調べるのに時間がかかりました。  
ただ、テンプレートを作成してしまえば、簡単に同じ設定のリソースを作成することができるのでとても便利だと感じました。  
また、スタックを削除するだけで各リソースが削除でき、削除忘れを防止できるため、これも便利だと感じました。  
どのような単位でスタックを作成するかはいろいろなやり方がありそうなので、その時々に応じて適切なやり方を選択できるようにしたいです。
