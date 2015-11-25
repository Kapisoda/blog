class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end

  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @user = User.all

  end

  def show
    @user = User.find(params[:id])
    @post = Post.all
  end
  private
  def user_params
    params.require(:user).permit(:name, :email)
  end

end
