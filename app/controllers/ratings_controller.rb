class RatingsController < ApplicationController

  before_action :fetch_user, :authorise, :only => [:index, :show]

  def index
    @ratings = Rating.all
    @rateable = find_rateable
  end

  def show
    @rating = Rating.find( params[:id] )
  end

  def new
    @rating = Rating.new
  end

  def create

    @rateable = find_rateable
    # @rating = @rateable.ratings.build(rating_params) - updated below
    # @rating = Rating.create( rating_params )
    # redirect_to @rating
    job = Job.find(params[:job_id])
    @rating = Rating.new(rating_params)


    if @rating.save
      @info = {
        :score => @rating.score,
        :description => @rating.body,
        :user_id => @current_user.id,
        :job_id => job.id
      }
      render json: @info
    else
      render json: @rating.errors, status: :unprocessable_entity
    end

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
    params.require(:rating).permit(:body, :score, :job_id, :user_id)
  end

  def find_rateable
    @ratings.each do |name, value|
      if name =~ /(.+)_id$/ # Regular Expression
        return $1.classify.constantize.find(value)
      end
    end
  end
end
