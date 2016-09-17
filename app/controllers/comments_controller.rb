class CommentsController < ApplicationController
  before_action :authorise, :only => [:create, :destroy]
  before_action :check_user, :only => [:edit, :update, :destroy]

  def create
    @job = Job.find params[:job_id]
    comment = Comment.create(comment_params)
    @job.comments << comment
    @current_user.comments << comment
    redirect_to job_path(@job)
  end

  def update
    comment = Comment.find params[:id]
    comment.update comment_params
    redirect_to :back
  end

  def edit
    @job = Job.find params[:job_id]
    @comment = @job.comments.find params[:id]
  end

  def destroy
    @job = Job.find params[:job_id]
    @comment = @job.comments.find params[:id]
    @comment.destroy
    redirect_to job_path(@job)
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :job_id, :user_id)
    end

    def check_user
      if @current_user.id != Comment.find(params[:id]).user.id
       flash[:error] = "That's not your account"
       redirect_to :back
      end
    end




end
