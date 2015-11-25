class AboutController < ApplicationController
  def index

    @title = 'Pisite o svemu'
    @category = Category.all
    @post = Post.all
  end
end
