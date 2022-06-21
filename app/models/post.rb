class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :likes
  has_many :comments
  after_save :update_post_counter

  def update_post_counter
    author.increment!(:posts_counter)
  end
  
  def recents_comments
    comments.order(created_at: :desc).limit(5)
  end
end
