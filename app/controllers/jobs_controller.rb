class JobsController < ApplicationController

    def index
      @jobs = Job.all.order("created_at DESC")
    #   geocoder
      if params[:search].present?
        distance = params[:distance] || 10
        @jobs = Job.near(params[:search], distance.to_i, :order => :task_location)
      else
        @jobs = Job.all.order("created_at DESC")
      end
    #   ///////
    end

    def new
      @job = Job.new
    end

    def coordinates
        @jobs = Job.all
        @coordinates = []
        @jobs.each do |j|
            @coordinates << [j.task_title, j.latitude, j.longitude]
        end
    render :json => @coordinates
    end

    def create

      job = Job.new(job_params)
      job.user_id = @current_user.id
      job.category_ids = params[:job][:category_ids]

      if params[:job][:images].present?
          params[:job][:images].each do |photo|
            req = Cloudinary::Uploader.upload(photo)
            job.images << req['public_id']
            job.save
          end
      end
      job.save
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

    # Created to allow ratings under rating model for a job
    def rate

      @rating = Rating.new(rating_params)
      @rating.user_id = @current_user.id
    # Check to make sure user is not the employee
      if params[:user_id].to_i == @current_user.id
        render :json => { :moron => "You" }
        return
      end
      job = Job.find_by(:id => params[:id])
      job.ratings << @rating

        if @rating.save
          render json: @rating
        else
          render json: @rating.errors, status: :unprocessable_entity
        end
        # redirect_to job
    end

    def status_in_progress
        @job = Job.find params[:id]
        @job.status = 1
        @job.save

        render :json => @job
    end

    def status_completed
        @job = Job.find params[:id]
        @job.status = 2
        @job.save

        render :json => @job
    end

    private
    # References for the rating
    def rating_params
      params.require(:rating).permit(:body, :score, :job_id, :user_id)
    end


    def job_params
      params.require(:job).permit(:task_title, :task_description, :task_location, :due_date, :start_time, :workers_required, :budget, :user_id, :applicant_id, :category_id, :rating_id, :category_ids => [])
    end



end
