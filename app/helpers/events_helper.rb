module EventsHelper
  def event_params
    params.require(:event).permit(:title, :description, :date, :location)
  end

  def current_user_attended_event 
    if !current_user.attended_events.find_by_id(@e_id)
      @go = link_to 'Go', attendances_path(:event_id => @event.id, :user_id => current_user.id), :method => :post 
    else
      @leave = link_to 'Leave this event', attendance_path(:event_id => @event.id, :user_id => current_user.id), method: :delete
  end

  def del_btn
    if @event.user.name == current_user.name
      @del = link_to 'Delete event', event_path(@event), method: :delete
    end
  end
end
