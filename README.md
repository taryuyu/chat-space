
## usersテーブル

|Column|Type|Options|
|------|----|-------|
|email|string||null: false, add_index: true|
|name|string|null:false, add_index: true unique: true|

### Association
-has_many :groups_users
-has_many :groups, through: group_users
-has_many :messages 

## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## groupsテーブル

|column|Type|Option|
|------|----|------|
|name|string|null: false, unique: true|

### Association
_has_many :groups_users
_has_many :users, through: groups_users
_has_many :messages



## messagesテーブル
|column|Type|Option|
|------|----|------|
|body|text|
|image|string|
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user
