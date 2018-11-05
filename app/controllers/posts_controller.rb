class PostsController < ApplicationController
  def create
    @category = Category.find(params[:category_id])
    @post = @category.posts.create(post_params)
    redirect_to category_path(@category)
  end
  
  private
    def post_params
      params.require(:post).permit(:headline, :price, :body, :date)
    end
end
