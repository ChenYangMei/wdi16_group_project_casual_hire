class ApplicantsController < ApplicationController
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
    job = Job.find(params[:job_id])

    if @applicant.save
      @info = {
        :quote => @applicant.quote,
        :description => @applicant.description,
        :user_id => @current_user.id,
        :job_id => job.id
      }
      render json: @info
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
