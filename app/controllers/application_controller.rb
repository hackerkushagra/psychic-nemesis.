class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  private
    def current_log
      Log.find(session[:log_id])
    rescue ActiveRecord::RecordNotFound
      log = Log.create
      session[:log_id] = log.id
      log
    end

end
