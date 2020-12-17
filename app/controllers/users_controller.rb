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
      #flash[:success] = "Object successfully created"
      redirect_to new_user_path
    else
      #flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show
    @upcoming_events = current_user.events.upcoming_events
    @past_events = current_user.events.past_events
  end
end
