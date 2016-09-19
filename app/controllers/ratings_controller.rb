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
    redirect_to "/ratings/#{rating.id}"
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
  def rating_params
    params.require(:rating).permit(:body, :score, :user_id, :job_id)
  end

end
