class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  before_filter :genres

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def genres
    @genres = Genre.all
  end

end
