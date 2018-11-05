class BlogsController < ApplicationController

before_action :redirect_to, except: :index

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    Blog.create(blog_params)
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :text, :image)
    redirect_to action: :index
  end

end
