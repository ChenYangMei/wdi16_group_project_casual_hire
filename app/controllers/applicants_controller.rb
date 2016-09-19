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
    @applicant = Applicant.find(params[:id])
    @applicant.create
  end

  def edit
  end

  private
    def applicant_params
      params.require(:applicant).permit(:body, :quote, :user_id, :job_id)
    end
end
