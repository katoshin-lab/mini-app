# :video_game::space_invader: GatherGamers
お気に入りのゲーム、おすすめしたいゲームを手軽に投稿したり、探せるサイトです。:video_game:

## :computer: 開発環境
- ruby 2.5.1p57
- Rails 5.0.7.2
- 主なGem: ['jquery-rails', 'haml-rails', 'devise']

## :star2: 実装内容 ＆ ギャラリー
### サイトの全体
https://gyazo.com/baf8a1c4caf73e53921987cacd246d65

## mini-app db設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unipue: true, index: true|
|password|string|null: false|
|email|string|null: false, unique: true|
### Association
has_many :games
has_many :reviews

## gamesテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|content|text|null: false|
|image|string||
|user_id|reference|null: false, foreign_key: true|
### Association
belongs_to :user
has_many :reviews

## reviewsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text||
|image|string||
|user_id|reference|null: false, foreign_key: true|
|game_id|reference|null: false, foreign_key: true|
### Association
belongs_to :user
belongs_to :game

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
