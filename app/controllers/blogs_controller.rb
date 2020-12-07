class BlogsController < ApplicationController
  before_action :authenticate_user!
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
  end

  def edit
  end

  def show
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :sentence, :date,images: [])
  end
end
