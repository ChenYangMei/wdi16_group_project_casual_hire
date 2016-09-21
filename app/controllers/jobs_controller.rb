class JobsController < ApplicationController

    def index
      @jobs = Job.all
    end

    def new
      @job = Job.new
    end

    def create

      job = Job.new(job_params)
      job.category_ids = params[:job][:category_ids]
      job.save

      if params[:image] == true
        # This is the magic stuff that will let us upload an image to Cloudinary when creating a new job.
        params[:images].each do |image|
            req = Cloudinary::Uploader.upload(image)
            job.images << req["public_id"]
            job.save
        end

      end

      redirect_to job_path(job)
    end

    def edit
      @job = Job.find params[:id]
    end

    def update

      @job = Job.find params[:id]
      @job.category_ids = params[:job][:category_ids]

      # respond to different formats here.
      # get it to return a json object that we can manipulate in our JS and render on the page
      respond_to do |format|
        if @job.update(job_params)
          format.html { redirect_to @job, notice: 'Job was successfully updated.' }
          # passing the applicant Method created in Job Model into the JSON file, which would nest the selected employee object in job JSON. Go Badger!!!!!!!!!!!!!
          format.json { render json: @job, methods: :applicant, status: :ok, location: @job }
        else
          format.html { render :edit }
          format.json { render json: @job.errors, status: :unprocessable_entity }
        end
      end

    end

    def show
      @job = Job.find params[:id]
      @applicant = Applicant.new
      @applicants = Applicant.all
      @rating = Rating.new
      @ratings = Rating.all
      @comment = @job.comments.build(:job => @job)
    end

    def destroy
      job = Job.find params[:id]
      job.destroy
      redirect_to jobs_path
    end

    def rate
      @rating = Rating.new(rating_params)
      @rating.user_id = params[:user_id]

      if params[:user_id].to_i == @current_user.id
        render :json => { :moron => "You" }
        return
      end

      Job.find_by(:id => params[:rating][:job_id]).ratings << @rating

        if @rating.save
          render json: @rating
        else
          render json: @rating.errors, status: :unprocessable_entity
        end
        redirect_to job
    end

    private
    def job_params
      params.require(:job).permit(:task_title, :task_description, :task_location, :due_date, :start_time, :workers_required, :budget, :user_id, :applicant_id, :category_id, :rating_id, :category_ids => [])
    end

    def status_in_progress
        @job = Job.find params[:id]
        @job.status = 1
        @job.save

        render :json => @job
    end
    

end
