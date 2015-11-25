class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.save

    redirect_to categories_path
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @category_title = 'Categories'
    @category = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @post = Post.all

  end

  private
  def category_params
    params.require(:category).permit(:name)
  end

end
