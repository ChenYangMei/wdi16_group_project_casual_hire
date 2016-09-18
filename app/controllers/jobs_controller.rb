class JobsController < ApplicationController
  def edit
    @job = Job.find params[:id]
  end

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.create
  end

  def show
    @job = Job.find params[:id]
  end

  def update
    job = Job.find params[:id]
    job.update job_params
  end

  def create
    job = Job.create( job_params )
    redirect_to job
  end

  private
  def job_params
    params.require(:job).permit(:task_title, :task_description, :task_location, :due_date, :start_time, :workers_required, :budget, :images )
  end
end
