class CategoriesController < ApplicationController

  def index
      @categories = Category.all
  end

  def show
    @category = Category.find( params[:id] )
  end



  private
    def user_params
      params.require(:user).permit(:name, :category_id, :job_id)
    end

end
