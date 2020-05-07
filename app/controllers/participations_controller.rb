class ParticipationsController < ApplicationController
  def index
    @participations_join = Participation.where(event_id: params[:id], status: 0)
    @participations_undecided = Participation.where(event_id: params[:id], status: 1)
    @participations_non = Participation.where(event_id: params[:id], status: 2)
  end

  def edit
    @participation = Participation.find(user_id)
  end

  def update
    @participation = Participation.find(current_user.id)
    if @participation.update(participation_params)
      redirect_to event_participations
    end
  end

  def new
    @participation = Participation.new

  end

  def create
    @participation = Participation.new(participation_params)
    if @participation.save
      redirect_to event_participations
    end
  end

  def show
  end

  private
    
    def participation_params
      parms.require(:participation).permit(:user_id, :event_id, :status)
    end
end
