class JobsController < ApplicationController

    def index
      @jobs = Job.all
    end

    def new
      @job = Job.new
    end

    def create
      # This is the magic stuff that will let us upload an image to Cloudinary when creating a new animal.
      job = Job.new(job_params)
      if params[:image] == true
      params[:job][:images].each do |image|
        req = Cloudinary::Uploader.upload(image)
        job.images << req["url"]
      end
      job.save
      end
      redirect_to job_path(job)
    end

    def edit
      @job = Job.find params[:id]
    end

    def update
      job = Job.find params[:id]
      job.category_ids = params[:job][:category_ids]
      job.update job_params
      redirect_to job
    end

    def show
      @job = Job.find params[:id]
      @applicant = Applicant.new
      @applicants = Applicant.all
      @comment = @job.comments.build(:job => @job)
    end

    def destroy
    job = Job.find params[:id]
    job.destroy
    redirect_to jobs_path
    end

    private
    def job_params
      params.require(:job).permit(:task_title, :task_description, :task_location, :due_date, :start_time, :workers_required, :budget, :user_id, :applicant_id, :category_id, :category_ids, :rating_id)
    end
    
    def search

    @user = User.find_by(:name => "Bob")

    if params[:search_origin] || params[:search_destination]
      @flights = Flight.search(params[:search_origin], params[:search_destination])
    else
      @flights = Flight.all.order("date desc")

    end
  end
end
