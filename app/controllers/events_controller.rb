class EventsController < ApplicationController
  include EventsHelper
  before_action :authenticate_user, only: %i[new create]

  def index
    @events = Event.all
    @upcoming_events = Event.upcoming_events
    @past_events = Event.past_events
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to events_url
    else
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
    @attendance = Attendance.new
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_url
  end
  
end
