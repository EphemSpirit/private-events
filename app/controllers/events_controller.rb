class EventsController < ApplicationController

  def index
    @events = current_user.created_events
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.created_events.build(event_params)

    if @event.save
      current_user.attended_events << @event
      redirect_to @event
    else
      render :new
    end

  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :date, :creator_id)
  end

end
