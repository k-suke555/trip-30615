# README
# テーブル設計

## usersテーブル

| column               | Type     | Options     |
|--------------------- |--------- |------------ |
| nickname             | string   | null: false |
| email                | string   | null: false |
| password             | string   | null: false |

### Association
- has_many :plans
- has_many :comments

## plans テーブル

| Column                  | Type       | Options                        |
| ----------------------- | ---------- | ------------------------------ |
| title                   | string     | null: false                    |
| area_id                 | integer    | null: false                    |
| lunch_title             | string     | null: false                    |
| lunch_description       | text       | null: false                    |
| lunch-type_id           | integer    | null: false                    |
| lunch_price_id          | integer    | null: false                    |
| afternoon_title         | string     | null: false                    |
| afternoon_description   | text       | null: false                    |
| afternoon_type_id       | integer    | null: false                    |
| afternoon_period_id     | integer    | null: false                    |
| afternoon_price_id      | integer    | null: false                    |
| user                    | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :comments

## comments テーブル

| Column        | Type       | Options                        |
| ------------  | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| plan          | references | null: false, foreign_key: true |
| text          | text       | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :plan

