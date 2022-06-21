class User < ApplicationRecord
  has_many :posts
  has_many :likes
  has_many :comments
end

class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments
end

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
end

class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post
end