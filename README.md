# README

# テーブル設計

## users テーブル

| Column   | Type    | Options     |
| -------- | ------  | ----------- |
| nickname | string  | null: false |
| name     | string  | null: false |
| email    | string  | null: false |
| password | string  | null: false |
| birthday | integer | null: falde |

### Association

- has_many :items
- has_one :buyer

## items テーブル

| Column      | Type   | Options     |
| ------------| ------ | ----------- |
| image       | string | null: false |
| name        | string | null: false |
| explanation | string | null: false |
| details     | string | null: false |
| delivery    | string | null: false |
| price       | string | null: false |
| user_id     | string | null: false |

### Association

- belongs_to :users
- belongs_to :buyer

## buyer テーブル

| Column   | Type    | Options     |
| -------- | ------- | ----------- |
| card     | integer | null: false |
| adress   | string  | null: false |
| phone    | integer | null: false |
| user_id  | string  | null: false |

### Association

- has_many :items
- belongs_to :user

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
