class Api::BlogsController < ApplicationController

  def index
    render json: Blog.all
  end

  def show
    render json: @blogs
  end
  
  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      render json: @blog
    else
      render json: { errors: @blog.errors }, status: :unprocessable_entity
    end
  end

  def update
    if @blog.update(blog_params)
      render json: @blog
    else
      render json: { errors: @blog.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @blog.destroy
    render json: { message: 'Blog deleted' }
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :desc)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end

end
