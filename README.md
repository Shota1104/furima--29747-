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
- has_many :address

## items テーブル

| Column      | Type   | Options     |
| ------------| ------ | ----------- |
| name        | string | null: false |
| explanation | string | null: false |
| details     | string | null: false |
| delivery    | string | null: false |
| price       | string | null: false |
| user_id     | string | null: false |

### Association

- belongs_to :user
- belongs_to :buyer
- belongs_to :address

## buyer テーブル

| Column  | Type   | Options     |
| ------- | ------ | ----------- |
| user_id | string | null: false |
| item_id | string | null: false |

### Association

- has_many :items
- belongs_to :user
- has_many :address

## address テーブル

| Column  | Type   | Options     |
| ------- | ------ | ----------- |
| user_id | string | null: false |
| item_id | string | null: false |
| address | string | null: false |
| phone   | string | null: false |

### Association

- has_one :item
- belongs_to :user
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
