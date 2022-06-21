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
