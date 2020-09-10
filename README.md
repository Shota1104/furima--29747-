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

| Column                   | Type       | Options                        |
| -------------------------| ---------- | ------------------------------ |
| name                     | string     | null: false                    |
| explanation              | text       | null: false                    |
| category_id              | integer    | null: false                    |
| status_id                | integer    | null: false                    |
| delivery_cost_id         | integer    | null: false                    |
| delivery_origin_id       | integer    | null: false                    |
| delivery_days_id         | integer    | null: false                    |
| price                    | integer    | null: false                    |
| user                     | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :buyer

## buyer テーブル

| Column  | Type       | Options                       |
| ------- | ---------- | ----------------------------- |
| user    | references | null: false, foreign_key: true|
| item    | references | null: false, foreign_key: true|

### Association

- belongs_to :item
- belongs_to :user
- has_one :address

## addresses テーブル

| Column         | Type       | Options                      |
| -------------- | ---------- | ---------------------------- |
| num            | string     | null: false                  |
| prefectures_id | integer    | null: false                  |
| city           | string     | null: false                  |
| area           | string     | null: false                  |
| building       | string     |                              |
| phone          | string     | null: false                  |
| buyer          | references |null: false, foreign_key: true|

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
