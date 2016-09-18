class RatingsController < ApplicationController

  def index
    @ratings = Rating.all
  end

  def show
    @rating = Rating.find( params[:id] )
  end

private
  def user_params
    params.require(:user).permit(:name, :job_id)
  end

end
