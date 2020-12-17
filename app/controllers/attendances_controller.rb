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
    @attendance = Attendance.find(params[:id])
    @attendance.destroy
  end

end
