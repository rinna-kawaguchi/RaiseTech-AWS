## 第 13 回課題

CirclrCI のサンプルに ServerSpec と Ansible の処理を追加。  
[CircleCI 実行用リポジトリ](https://github.com/rinna-kawaguchi/circleci-ansible-test)

### 実施内容

以下を CircleCI で自動実行するよう設定。

1. cfn-lint で CloudFormation の構文チェック
2. CloudFormation で AWS リソースを作成
3. Ansible でサンプルアプリケーションが EC2 上で動作するようセットアップ
4. ServerSpec で EC2 サーバのテスト

### CircleCI の実行結果

全体
![circleci_all](image/circleci_all.png)

cfn-lint
![cfn_lint](image/circleci_cfn-lint.png)

CloudFormation 実行
![cloudformation](image/circleci_cloudformation.png)

Ansible 実行
![ansible1](image/circleci_ansible1.png)
![ansible2](image/circleci_ansible2.png)

ServerSpec 実行
![serverspec](image/circleci_serverspec.png)

### アプリケーション動作

ALB の DNS 名にアクセスし、アプリケーションが使用できることを確認
![app](image/app_home.png)

画像が S3 に保存されていることを確認
![s3_list](image/s3_list.png)
![s3_pear](image/s3_pear.png)

### 感想

かなり大変な課題でした。  
特に、Ansible の部分は処理内容が多い上に、Ansible で実行するにはどう記述すればよいか、一つ一つ調べて動作確認することの繰り返しで、時間を要しました。  
ただ、これを使えば push するだけでリソース作成、アプリケーションの起動、サーバーのテストまで自動で行われるため、非常に便利なツールだと感じました。  
どこまでを自動化するのが効率的か考えながら、CI ツール等を活用できるようにしたいです。
