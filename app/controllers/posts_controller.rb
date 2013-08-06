class PostsController < ApplicationController

  def index
    @posts = Post.order('votes DESC')
  end

end