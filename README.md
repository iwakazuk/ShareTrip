# ShareTrip
現在ポートフォリオとして作成中の写真投稿アプリです。
自身の旅の思い出をみんなに共有したり、気に入った写真やユーザーをフォローすることができます。

## URL
- ShareTrip.work
- ログインページからおためしログインをクリックで、ゲストアカウントとしてログインできます  

## 使用技術
- Ruby 2.6.5, Rails 6.0.2
- webpacker: SASS,Bootstrap4,JQuery
- Docker,Docker-compose(未実装)
- nginx,puma
- AWS (VPC,EC2,RDS for MySQL,S3,Route53)
- Terraform(未実装)
- Circle CI/CD(Capistrano3)(未実装)
- Rspec(未実装)
- GoogleMapsAPI,GeolocationAPI(実装)

## 機能一覧
- 管理ユーザー機能(ユーザー、投稿を削除)
- ユーザー登録,ログイン,編集機能(devise)
- 画像記事投稿、削除機能
- 投稿、プロフィール画像プレビュー機能
- 投稿一覧、投稿詳細表示機能
- ページネーション機能(Ajax)
- いいね、フォロー機能(Ajax)
- ユーザー一覧、フォローフォロワー一覧、投稿をいいねしたユーザー一覧機能
- 検索機能(投稿、ユーザー)
- 単体spec、システムspec
