class UsersController < ApplicationController

  def new
    @User = User.new
  end

  def create
    @user = Object.new(params[:user])
    if @user.save
      #flash[:success] = "Object successfully created"
      redirect_to @user
    else
      #flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show
    @user = User.find(id)
  end
    
end
