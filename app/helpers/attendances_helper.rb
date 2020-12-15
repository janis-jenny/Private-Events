module AttendancesHelper
  def attendance_params
    params.require(:attendance).permit(:user_id, :event_id)
  end
end
