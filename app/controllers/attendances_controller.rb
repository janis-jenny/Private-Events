class AttendancesController < ApplicationController
  include AttendancesHelper

  def index
    @attendances = Attendance.all
  end
  

  def new
    @attendance = Attendance.new
  end

  def create
    #@attendance = current_user.attendances.build
    @attendance = Attendance.new(attendance_params)
    
    if @attendance.save
      redirect_to new_attendance_path
    else
      render 'new'
    end
  end
end
