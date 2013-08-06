class PostsController < ApplicationController

  def index
    @posts = Post.order('votes DESC')
  end

  def show
    @post = Post.find(params[:id])
  end

end