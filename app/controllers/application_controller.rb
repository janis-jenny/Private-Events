class ApplicationController < ActionController::Base
  include EventsHelper
  helper_method :current_user
  helper_method :user_sign_in?
  helper_method :authenticate_user

  def current_user
    User.find_by(id: session[:user_id])
  end

  def user_sign_in?
    !current_user.nil?
  end

  def authenticate_user
    if current_user.nil?
      #flash[:error] = 'You must be signed in to view that page.'
      redirect_to login_path
    end
  end
end
