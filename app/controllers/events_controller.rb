class EventsController < ApplicationController
  include EventsHelper

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to new_event_url
    else
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
    @attendance = Attendance.new
  end
end
