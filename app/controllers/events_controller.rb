class EventsController < ApplicationController
  def new
  end

  def index
    @events = Event.all
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
    @event = Event.find(params[:id])
  end
end
