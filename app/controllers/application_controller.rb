class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :authorize
  protect_from_forgery with: :exception
  private
    def current_log
      Log.find(session[:log_id])
    rescue ActiveRecord::RecordNotFound
      log = Log.create
      session[:log_id] = log.id
      log
    end
   private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user
  
protected

    def authorize
      unless User.find_by_id(session[:user_id])
        redirect_to login_url, :notice => "Please log in"
      end 
    end
  

end
