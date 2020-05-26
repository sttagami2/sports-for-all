class ParticipationsController < ApplicationController
  before_action :authenticate_user!
  def index
    @participations_join = Participation.where('event_id=? and status=?', params[:event_id], "参加")
    @participations_join_num = Participation.where('event_id=? and status=?', params[:event_id], "参加").count
  end

  def edit
    @participation = Participation.find(user_id)
  end

  def update
  end

  def new
    @participation = Participation.new

  end

  def create
    @participation = Participation.new(participation_params)
    @participation.user_id = current_user.id
    @participation.status = "参加";
    if @participation.save
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @participation = Participation.find_by(user_id: current_user.id)
    @participation.destroy
    redirect_back(fallback_location: root_path)
  end

  def show
  end

  private
    
    def participation_params
      params.permit(:event_id, :status, :user_id)
    end
end
