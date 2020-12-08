class BlogsController < ApplicationController
  before_action :move_to_index, except: [:index,:show]

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

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
