module EventsHelper
  def event_params
    params.require(:event).permit(:title, :description, :date, :location)
  end

  def current_user_attended_event
    if user_sign_in?
      if !current_user.attended_events.find_by_id(@e_id)
        @go = link_to 'Go', attendances_path(:event_id => @event.id, :user_id => current_user.id), :method => :post, class: 'btn btn-success'
      else
        @leave = link_to 'Leave this event', attendance_path(:event_id => @event.id, :user_id => current_user.id), method: :delete, class: 'btn btn-success'
      end
    end
  end

  def del_btn
    if user_sign_in?
      if @event.user.name == current_user.name
        @del = link_to 'Delete event', event_path(@event), method: :delete, class: 'btn btn-success'
      end
    end
  end

  def create_event
    if user_sign_in?
      @new_event_btn = link_to 'Create event', new_event_path, class: 'btn btn-success'
      @your_event_btn = link_to 'Your events', user_path(current_user), class: 'btn btn-success'
    end
  end


end
