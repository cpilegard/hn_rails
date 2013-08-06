class User < ActiveRecord::Base
  attr_accessible :password, :username

  has_many :posts
  has_many :comments
  has_many :post_votes
  has_many :comment_votes

  before_save {username.downcase!}

  validates :username, presence: true, uniqueness: { case_sensitive: false }
end
