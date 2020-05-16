class GamesController < ApplicationController
  def index
  end

  def new
    @participation = Participation.new
    participations = Participation.where('event_id=? and status=?', params[:event_id], "参加")
    @users = User.where(id: participations.map{|t| t.user_id})
  end

  def halfway
    @event = Event.find(params[:event_id])
    @game = Game.new

    # 2チーム自動で作成
    2.times do
      Team.create(
        event_id: params[:event_id],
        name: Takarabako.open,
      )
    end

    case params[:member_select]
      when  "all"
        participations = Participation.where('event_id=? and status=?', params[:event_id], "参加")
        random_team = participations.shuffle
        team = random_team.to_a.in_groups(2, false)                   # チームを2つに分ける
        @member1 = team[0]                                              # team配列1つ目を1チーム目とする
        @member2 = team[1]                                              # team配列2つ目を2チーム目とする
        
        # チーム詳細を2チーム分作成する（どの会員がどのチームに属しているか分かるようにする）
        @member1.each do |member1|                                        # 1つ目のチーム詳細作成
          TeamDetail.create(
            team_id: Team.order("created_at DESC").second,
            participation_id: member1.user_id,
          )
        end

        @member2.each do |member2|                                         # 2つ目のチーム詳細作成
          TeamDetail.create(
            team_id: Team.order("created_at DESC").first,
            participation_id: member2.user_id,
          )
        end

        @team1 = Team.order("created_at DESC").second
        @team2 = Team.order("created_at DESC").first
        @event = Event.find(params[:event_id])

      when  "select"
        # newページで取得した参加者の情報をParticipationのレコード上のidと合致させるための処理
        user_ids = []
        params[:participation_select][:user_id].each do |id|
          user_ids.push(id.to_i)
        end
        
        # newページで取得した参加者のidからチーム分けを行う 
        participations = Participation.where(event_id: params[:event_id]).where(user_id: user_ids)
        random_team = participations.shuffle
        team = random_team.to_a.in_groups(2, false) # チームを2つに分ける
        @member1 = team[0]
        @member2 = team[1]

        # チーム詳細を2チーム分作成する（どの会員がどのチームに属しているか分かるようにする）
        @member1.each do |member1|                        # 1つ目のチーム詳細作成
          TeamDetail.create(
            team_id: Team.order("created_at DESC").second,
            participation_id: member1.user_id,
          )
        end

        @member2.each do |member2|                        # 2つ目のチーム詳細作成
          TeamDetail.create(
            team_id: Team.order("created_at DESC").first,
            participation_id: member2.user_id,
          )
        end

        @team1 = Team.order("created_at DESC").second
        @team2 = Team.order("created_at DESC").first
        @event = Event.find(params[:event_id])

      when  "select_team"
        # newページで取得した参加者の情報をParticipationのレコード上のidと合致させるための処理
        user_ids1 = []
        params[:select_team1][:user_id].each do |id|
          user_ids1.push(id.to_i)
        end
        user_ids2 = []
        params[:select_team2][:user_id].each do |id|
          user_ids2.push(id.to_i)
        end
        
        @member1 = Participation.where(event_id: params[:event_id]).where(user_id: user_ids1)
        @member2 = Participation.where(event_id: params[:event_id]).where(user_id: user_ids2)
        @team1 = Team.order("created_at DESC").second
        @team2 = Team.order("created_at DESC").first
        @event = Event.find(params[:event_id])

    end
  end

  def create
    @game = Game.new
    @game.event_id = params[:event_id]

    score1 = (params[:score1]).to_i
    score2 = (params[:score2]).to_i

    if score1 > score2
      @game.win_id = Team.order("created_at DESC").second.id
      @game.lose_id = Team.order("created_at DESC").first.id
      @game.win_score = score1
      @game.lose_score = score2
    else
      @game.win_id = Team.order("created_at DESC").first.id
      @game.lose_id = Team.order("created_at DESC").second.id
      @game.win_score = score2
      @game.lose_score = score1
    end

    @game.save

    redirect_to event_games_path
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
    def game_params
      params.require(:game).permit(:event_id, :win_id, :lose_id, :win_score, :lose_score)
    end
 
    def participation_params
      params.require(:participation).permit(:user_id, :event_id, :status) 
    end

    def participation_select_params
      params.require(:participation_select).permit(user_id: [])
    end

    def select_team1_params
      params.require(:select_team1).permit(user_id: [])
    end

    def select_team2_params
      params.require(:select_team2).permit(user_id: [])
    end
    
    def user_parms
      params.require(:user).permit(:id)
    end
end
