class EventsController < ApplicationController
  before_action :authenticate_user!
  def new
    @event = Event.new
  end

  def index
    if params[:type_id].present?
      @events = Event.where(type_id: params[:type_id])
    else
      @events = Event.all
    end
  end

  def create
    @event = Event.new(event_params)
    @event.save
    Participation.create!(
      event_id: @event.id,
      user_id: current_user.id,
      status: "参加",
    )
    redirect_to event_path(@event)
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  def show
    @event = Event.find(params[:id])
    @participations = Participation.where('event_id=? and status=?', params[:id], "参加")
    @participation = Participation.find_by('event_id=? and user_id=?', params[:id], current_user.id)
    @participationnew = Participation.new
    @comment = Comment.new
    @comments = @event.comments
  end

  private
    def event_params
      params.require(:event).permit(:type_id, :event_name, :introduction, :start_date, :finish_date, :place_name, :address)
    end
end
