class RatingsController < ApplicationController

  def index
    @ratings = Rating.all
  end

  def show
    @rating = Rating.find( params[:id] )
  end

  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.create( rating_params )
    redirect_to @rating
  end

  def edit
    @rating = Rating.find params[:id]
  end

  def update
    rating = Rating.find params[:id]
    rating.update( rating_params )
    redirect_to "/ratings/#{rating.id}"
  end

  def destroy
    rating = Rating.find params[:id]
    rating.destroy
    redirect_to "/ratings"
  end

private
  def user_params
    params.require(:user).permit(:name, :job_id, :user_id)
  end

end
