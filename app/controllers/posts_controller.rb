class PostsController < ApplicationController
  def create
    @category = Category.find(params[:category_id])
    @post = @category.posts.create(post_params)
    redirect_to category_path(@category)
  end

  def edit
    @category = Category.find(params[:category_id])
    @post = @category.posts.find(params[:id])
  end

  def update
    @category = Category.find(params[:category_id])
    @post = @category.posts.find(params[:id])

    if @post.update(post_params)
      redirect_to @category
    else
      render 'edit'
    end
  end


  def destroy
    @category = Category.find(params[:category_id])
    @post = @category.posts.find(params[:id])
    @post.destroy
    redirect_to category_path(@category)
  end

  
  
  private
    def post_params
      params.require(:post).permit(:headline, :price, :body, :date)
    end
end
