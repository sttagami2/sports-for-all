class ParticipationsController < ApplicationController
  def index
    @participations_join = Participation.where('event_id=? and status=?', params[:event_id], 0)
    @participations_undecided = Participation.where('event_id=? and status=?', params[:event_id], 1)
    @participations_non = Participation.where('event_id=? and status=?', params[:event_id], 2)
    @participations_join_num = Participation.where('event_id=? and status=?', params[:event_id], 0).count
    @participations_undecided_num = Participation.where('event_id=? and status=?', params[:event_id], 1).count
    @participations_non_num = Participation.where('event_id=? and status=?', params[:event_id], 2).count
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
    @participation.user_id = current_user.id
    @participation.status = 0;
    if @participation.save
      redirect_to event_participations_path
    end
  end

  def show
  end

  private
    
    def participation_params
      params.permit(:event_id)
    end
end
