class Comment < ActiveRecord::Base
  attr_accessible :content, :post_id, :user_id, :votes
  belongs_to :user
  belongs_to :post
  has_many :comment_votes

  validates :user_id, presence: true
  validates :post_id, presence: true
end
