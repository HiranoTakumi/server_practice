class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  def corrent_user
    User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
