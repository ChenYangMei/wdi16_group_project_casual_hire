class CategoriesController < ApplicationController

  before_action :authorise, :only => [:index, :show]

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find( params[:id] )
  end

  private
    def category_params
      params.require(:category).permit(:name, :category_id, :job_id)
    end

end
