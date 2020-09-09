# README

# テーブル設計

## users テーブル

| Column          | Type    | Options     |
| ----------------| ------  | ----------- |
| nickname        | string  | null: false |
| last_name       | string  | null: false |
| first_name      | string  | null: false |
| kana_last_name  | string  | null: false |
| kana_first_name | string  | null: false |
| email           | string  | null: false |
| password        | string  | null: false |
| birthday        | date    | null: falde |

### Association

- has_many :items
- has_many :buyer

## items テーブル

| Column      | Type   | Options     |
| ------------| ------ | ----------- |
| name        | string | null: false |
| explanation | string | null: false |
| category    | string | null: false |
| status      | string | null: false |
| delivery    | string | null: false |
| price       | string | null: false |
| user_id     | string | null: false |

### Association

- belongs_to :user
- has_one :buyer

## buyer テーブル

| Column  | Type       | Options                       |
| ------- | ---------- | ----------------------------- |
| user_id | references | null: false, foreign_key: true|
| item_id | references | null: false, foreign_key: true|

### Association

- belongs_to :items
- belongs_to :user

## address テーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| address     | string     | null: false |
| address_num | string     |null: false  |
| phone       | string     | null: false |

### Association


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
