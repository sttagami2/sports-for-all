class UsersController < ApplicationController
  def show
    participations = Participation.where('user_id=?', current_user.id)
    @events = Event.where(id: participations.map{|t| t.event_id})
  end

  def edit
  end

  def update
  end
end
