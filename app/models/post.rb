class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :likes
  has_many :comments

  def recents_comments
    comments.order(created_at: :desc).limit(5)
  end
end
