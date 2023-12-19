# README

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



## users テーブル
| Column             | Type   | Options                              |
| ------------------ | ------ | ------------------------------------ |
| nick_name          | string | null: false                          |
| first_name         | string | null: false                          |
| last_name          | string | null: false                          |
| first_name_kana    | string | null: false                          |
| last_name_kana     | string | null: false                          |
| birth_date         | date   | null: false                          |
| email              | string | null: false, unique: true            |
| password           | string | null: false                          |




## items テーブル
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| item_name             | string     | null: false                    |
| description           | text       | null: false                    |
| category              | integer    | null: false                    |
| item_condition        | integer    | null: false                    |
| delivery_charge       | integer    | null: false                    |
| shipping_place        | integer    | null: false                    |
| delivery_date         | integer    | null: false                    |
| item_price            | integer    | null: false                    |
| user                  | references | null: false, foreign_key: true |





## addresses テーブル
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| post_code          | string     | null: false                    |
| prefecture         | integer    | null: false                    |
| municipality       | string     | null: false                    |
| street_address     | string     | null: false                    |
| building           | string     |                                |
| telephone          | string     | null: false                    |




