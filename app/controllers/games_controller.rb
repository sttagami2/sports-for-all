class GamesController < ApplicationController
  def index
  end

  def new
    @game = Game.new
    @participations = Participation.where('event_id=? and status=?', 1, 0)
    takarabako = Takarabako.open
    binding.pry
  end

  def halfway
    @participation = Participation.new(participation_params)
    case params[:member_select]
      when  "all"
        participations = Participation.where('event_id=? and status=?', 1, 0)
        random_team = participations.shuffle
        team = random_team.to_a.in_groups(2, false)         # チームを2つに分ける
        
        Team.create(
          @team1 = team[0]
          
        )
        @team2 = team[1]

      when  "select"
        

      when  "select_team"
    end
  end

  def create

  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end

  private
    def participation_params
      parms.require(:participation).permit(:user_id, :game_id, :event_id, :status) 
    end
end
