class PostsController < ApplicationController
  before_action :set_all_posts, only:[:index,:create,:edit,:update,:confirm]
  before_action :set_post, only:[:edit,:update,:destroy]
  def index
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)
    if params[:back]
      render :index
    else
      if @post.save
        redirect_to posts_path, notice:"つぶやきました"
      else
        render :index
      end
    end
  end
  def edit
  end
  def update
    if @post.update(post_params)
      redirect_to posts_path, notice:"つぶやきを変えました"
    else
      render :edit
    end
  end
  def destroy
    @post.destroy
    redirect_to posts_path, notice:"つぶやきをなかったことにしました"
  end
  def confirm
    @post = Post.new(post_params)
    render :index if @post.invalid?
  end
  private
  def post_params
    params.require(:post).permit(:content, :created_at)
  end
  def set_all_posts
    @posts = Post.all.order("created_at DESC")
  end
  def set_post
    @post = Post.find(params[:id])
  end
end
