class BlogsController < ApplicationController

  share :blog

  def index
  end

  def new
  end

  def create
    if blog.save
      redirect_to blog, success: "Blog created."
    else
      render :new
    end
  end

  def show

  end

  def edit
  end

  def destroy
  end

  def show
  end

  def update
  end

  def blog
    @blog ||= params[:id] ? Blog.find(params[:id]) : Blog.new(blog_params)
  end

  private

    def blog_params
      params.fetch(:blog, {}).permit :name
    end

end
