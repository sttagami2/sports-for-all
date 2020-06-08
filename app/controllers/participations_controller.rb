class ParticipationsController < ApplicationController
  before_action :authenticate_user!
  def index
    @participations_join = Participation.participation_index(params[:event_id])
    @participations_join_num = Participation.participation_index(params[:event_id]).count
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
    @participation.status = "参加"
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
