class EventsController < ApplicationController
  include EventsHelper
  #before_action :authenticate_user!, only: %i[new create]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    #@event = Event.new(params[:title])
    if @event.save
      flash[:success] = "Event successfully created"
      redirect_to new_event_url
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
  end
end
