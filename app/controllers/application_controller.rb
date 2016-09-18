class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :fetch_user

  private
  
  def fetch_user
    @current_user = User.find_by(:id => session[:user_id]) if session[:user_id]

    session[:user_id] = nil unless @current_user.present?
    # If there is a session user_id defined, find that user with the ID
    # Assign it to an instance variable
  end
end
