class MemoController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(set_post)
    if @post.save
      redirect_to root_path
    else
      render 'memo/new'
    end
  end

  private
    def set_post
      params.require(:post).permit(:text, :created_at)
    end
end
