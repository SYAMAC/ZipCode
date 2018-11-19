# READ ME

### アプリケーションを実行するにあたり、以下の実施をお願いいたします

#### 環境構築
```
git clone git@github.com:SYAMAC/ZipCode.git
bundle install --path=vendor/bundle

mysql.server start
mysql -u root
> create database zip-code_development;

bundle exec rake db:create
bundle exec rake db:migrate
```

#### データの登録
- consoleより以下を実行(10分〜15分で完了いたします)
`bundle exec rails runner Tasks::Batch.import_csv_to_database`
