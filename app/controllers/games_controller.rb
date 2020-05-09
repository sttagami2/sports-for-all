class GamesController < ApplicationController
  def index
  end

  def new
    # @game = Game.new
    # @participations = Participation.where('event_id=? and status=?', 1, 0)
    # takarabako = Takarabako.open
    @participations = Participation.where('event_id=? and status=?', params[:event_id], 0)
    binding.pry
  end

  def halfway
    @participation = Participation.new(participation_params)

    case params[:member_select]
      when  "all"
        participations = Participation.where('event_id=? and status=?', params[:event_id], 0)
        random_team = participations.shuffle
        team = random_team.to_a.in_groups(2, false)                   # チームを2つに分ける
        @team1 = team[0]                                              # team配列1つ目を1チーム目とする
        @team2 = team[1]                                              # team配列2つ目を2チーム目とする
        
        # 2チーム自動で作成
        2.times do
          Team.create(
            event_id: params[:event_id],
            name: Takarabako.open,
          )
        end

        # チーム詳細を2チーム分作成する（どの会員がどのチームに属しているか分かるようにする）
        count = Team.where('event_id=?', params[:event_id]).count     # 最新の2チームを取得するためにレコード数を取得
        @team1.each do |team1|                                        # 1つ目のチーム詳細作成
          TeamDetail.create(
            team_id: count-2,
            participation_id: team1.user_id,
          )
        end

        @team2.each do |team2|                                         # 2つ目のチーム詳細作成
          TeamDetail.create(
            team_id: count-1,
            participation_id: team2.user_id,
          )
        end

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
