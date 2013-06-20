class ApplicationController < ActionController::Base
  protect_from_forgery
   private

 # def current_user
  # @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
 #end
  #helper_method :current_user


  def current_event
    @current_event ||= Event.find_by_id(session[:event_id]) if session[:event_id]
  end
  helper_method :current_event
end
