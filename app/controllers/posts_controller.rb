class PostsController < ApplicationController
  before_action :authenticate_user!
  def new
    @post_title = 'Add new post'
    @param = "new"
    @post = current_user.posts.build
    @category = Category.new
  end

  def create
    @post = current_user.posts.build(post_params)
    @post.save

    redirect_to posts_path
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @param = "index"
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])

  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :user_id, :category_id)
  end

end
