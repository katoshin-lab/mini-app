# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
# mini-app db設計
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
