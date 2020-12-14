module EventsHelper
  def event_params
    params.require(:event).permit(:title, :description, :date, :location)
  end
end
