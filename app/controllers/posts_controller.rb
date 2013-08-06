class PostsController < ApplicationController

  def index
    @posts = Post.order('votes DESC')
  end

  def show
    @current_user = current_user
    @post = Post.find(params[:id])
  end

end