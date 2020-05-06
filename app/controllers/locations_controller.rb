class LocationsController < ApplicationController
  def new
    @locationnew = Location.new
  end

  def index
  end

  def create
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
  end

  def show
  end
end
