class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
    # @my_product = Product.where(user_id: @product.user_id)
    # @next_product = Product.where("id > ?", @product.id).order("id ASC").first
    # @prev_product = Product.where("id < ?", @product.id).order("id DESC").first
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
