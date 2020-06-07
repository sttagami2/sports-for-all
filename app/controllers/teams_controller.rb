class TeamsController < ApplicationController
  before_action :authenticate_user!
  def index
    @teams = Team.all
  end

  def create
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to teams_path
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  private

  def team_params
    parms.require(:team).permit(:participation_id, :name)
  end
end
