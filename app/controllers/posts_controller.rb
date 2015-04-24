class PostsController < ApplicationController
  def index
    @posts = Post.published.page(params[:page]).per(10)
  end

  def show
    @post = Post.friendly.find(params[:id])
  rescue
    redirect_to root_path
  end
end
