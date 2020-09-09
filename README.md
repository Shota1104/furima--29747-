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

| Column                | Type       | Options                        |
| ----------------------| ---------- | ------------------------------ |
| name                  | string     | null: false                    |
| explanation           | string     | null: false                    |
| category              | string     | null: false                    |
| status                | string     | null: false                    |
| delivery_cost         | string     | null: false                    |
| delivery_origin       | string     | null: false                    |
| delivery_days         | string     | null: false                    |
| price                 | string     | null: false                    |
| user_id               | references | null: false, foreign_key: true |

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
- has_one :address

## address テーブル

| Column              | Type       | Options     |
| ------------------- | ---------- | ----------- |
| address_num         | string     | null: false |
| address_prefectures | string     |null: false  |
| address_city        | string     | null: false |
| address_area        | string     | null: false |
| building_name       | string     |             |
| phone               | string     | null: false |

### Association
- belongs_to :buyer

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
