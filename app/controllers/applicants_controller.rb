class ApplicantsController < ApplicationController
  before_action :fetch_user, :authorise, :only => [:index, :show, :create]
  def index
    @applicants = Applicant.all
  end

  def show
    @applicant = Applicant.find(params[:id])
  end

  def new
    @applicant = Applicant.new
  end

  def create

    @applicant = Applicant.new(applicant_params)
    @applicant.job_id = params[:job_id]
    @applicant.user_id = @current_user.id

    # Creating a JSON format for aJax to get and being manipulated in the DOM.
    job = Job.find(params[:job_id])

    if @applicant.save
      # @info = {
      #   :quote => @applicant.quote,
      #   :description => @applicant.description,
      #   :user_id => @current_user.id,
      #   :job_id => job.id
      # }
      render json: @applicant
    else
      render json: @applicant.errors, status: :unprocessable_entity
    end

  end

  def edit
  end

  private

  def applicant_params
    params.require(:applicant).permit(:description, :quote, :user_id, :job_id)
  end

end
