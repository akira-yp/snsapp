class PostsController < ApplicationController
  before_action :set_all_posts, only:[:index,:create,:edit,:update]
  before_action :set_post, only:[:edit,:update,:destroy]
  def index
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice:"メッセージを投稿しました！"
    else
      render :index
    end
  end
  def edit
  end
  def update
    if @post.update(post_params)
      redirect_to posts_path, notice:"メッセージを更新しました！"
    else
      render :edit
    end
  end
  def destroy
    @post.destroy
    redirect_to posts_path, notice:"メッセージを削除しました！"
  end
  def confirm
    @post = Post.new(post_params)
  end
  private
  def post_params
    params.require(:post).permit(:content, :created_at)
  end
  def set_all_posts
    @posts = Post.all
  end
  def set_post
    @post = Post.find(params[:id])
  end
end
