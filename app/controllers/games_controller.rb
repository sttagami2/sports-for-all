class GamesController < ApplicationController
  def index
  end

  def new
    participation = Participation.where('event_id=? and status=?', 1, 0)
    random_team = participation.shuffle
    team = random_team.to_a.in_groups(2, false)         # チームを2つに分ける
    @team1 = team[0]                                    # team配列1つ目を1チーム目とする
    @team2 = team[1]                                    # team配列2つ目を2チーム目とする
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def halfway
    
  end

  def show
  end
end
