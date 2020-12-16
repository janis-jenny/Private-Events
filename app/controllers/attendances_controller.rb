class AttendancesController < ApplicationController
  include AttendancesHelper

  def index
    @attendances = Attendance.all
  end
  

  def new
    @attendance = Attendance.new
  end

  def create
    @attendance = Attendance.new(:user_id => params[:user_id], :event_id => params[:event_id])

    if @attendance.save
      redirect_to events_path
    else
      render 'new'
    end
  end
end
