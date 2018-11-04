class CategoryController < ApplicationController
  def index
  end

  def new
  end

  def create
    @category = Category.new(category_params)

    @category.save
    redirect_to @category
  end

  def update
  end

  def show
  end

  def delete
  end

  private
    def category_params
      params.require(:category).permit(:title)

end
