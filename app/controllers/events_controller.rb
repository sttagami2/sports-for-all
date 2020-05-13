class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def index
    @events = Event.all
  end

  def create
    @event = Event.new(event_params)
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
  end

  def show
    @event = Event.find(params[:id])
    @participations = Participation.where('event_id=? and status=?', params[:id], "参加")
    @participation = Participation.find_by('event_id=? and user_id=?', params[:id], current_user.id)
    @participationnew = Participation.new
  end

  private
    def event_params
      parms.require(:event).permit(:location_id, :type_id, :event_name, :introduction, :date, :place_name, :address)
    end
end
