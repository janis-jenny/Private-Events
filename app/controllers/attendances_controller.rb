class AttendancesController < ApplicationController
  include AttendancesHelper
  
  def index
    @attendances = Attendance.all
  end
  
  def create
    @attendance = Attendance.new(attendance_params)
  
    if @attendance.save
      redirect_to events_path
    else
      render 'new'
    end
  end

  def destroy
    @attendance = Attendance.find_by(user_id: params[:user_id], event_id: params[:event_id])
    @attendance.destroy
    redirect_to event_path
  end

end
