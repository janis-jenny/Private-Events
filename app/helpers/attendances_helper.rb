module AttendancesHelper
  def attendance_params
    params.permit(:user_id, :event_id)
  end
end
