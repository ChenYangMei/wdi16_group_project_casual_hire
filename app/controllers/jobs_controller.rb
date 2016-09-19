class JobsController < ApplicationController

    def index
      @jobs = Job.all
    end

    def new
      @job = Job.create
    end

    def create
      job = Job.create job_params
      redirect_to job
    end

    def edit
      @job = Job.find params[:id]
    end

    def update
      job = Job.find params[:id]
      job.update job_params
      redirect_to job
    end

    def show
      @job = Job.find params[:id]
      @comment = @job.comments.build(:job => @job)
    end

    def destroy
    job = Job.find params[:id]
    job.destroy
    redirect_to jobs_path
    end

    private
    def job_params
      params.require(:job).permit(:task_title, :task_description, :task_location, :due_date, :start_time, :workers_required, :budget, :images, :user_id, :applicant_id, :category_id, :rating_id)
    end
end
