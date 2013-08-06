class Post < ActiveRecord::Base
  attr_accessible :content, :title, :user_id, :votes

  belongs_to :user
  has_many :comments
  has_many :post_votes

  validates :user_id, presence: true
end
