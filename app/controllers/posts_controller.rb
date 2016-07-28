class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
  end

  def new
    @post = Post.new
  end

  def create
    if @post = Post.create(post_params)
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :image)
  end
end
