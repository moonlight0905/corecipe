# テーブル設計

## users テーブル

| Column                | Type   | Options                   |
| --------------------- | ------ | ------------------------- |
| nickname              | string | null: false               |
| email                 | string | null: false, unique: true |
| encrypted_password    | string | null: false               |

### Association

- has_many :recipes
- has_many :comments

## recipes テーブル

| Column                | Type        | Options                        |
| --------------------- | ----------- | ------------------------------ |
| recipe_name           | string      | null: false                    |
| category_id           | integer     | null: false                    |
| servings_id           | integer     | null: false                    |
| ingredients1          | string      | null: false                    |
| ingredients2          | string      |                                |
| ingredients3          | string      |                                |
| ingredients4          | string      |                                |
| ingredients5          | string      |                                |
| ingredients6          | string      |                                |
| cooking_instructions1 | string      | null: false                    |
| cooking_instructions2 | string      |                                |
| cooking_instructions3 | string      |                                |
| cooking_instructions4 | string      |                                |
| cooking_instructions5 | string      |                                |
| cooking_instructions6 | string      |                                |
| remarks               | text        | null: false                    |
| user                  | references  | null: false, foreign_key: true |

### Association

- has_many :comments
- belongs_to :user

## comments テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| user     | references | null: false, foreign_key: true |
| recipe   | references | null: false, foreign_key: true |
| text     | text       | null: false                    |

### Association

- belongs_to :user
- belongs_to :recipe

