class UsersController < ApplicationController
  include UsersHelper

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @upcoming_events = current_user.events.upcoming_events
    @past_events = current_user.events.past_events
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end
end
