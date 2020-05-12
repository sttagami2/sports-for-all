class GamesController < ApplicationController
  def index
  end

  def new
    # @game = Game.new
    # @participations = Participation.where('event_id=? and status=?', 1, 0)
    # takarabako = Takarabako.open
    # participations.each do |participation|
    #   aaa = Participation.new(id: participation.id, name: participation.user.name)
    #   @participations.push(aaa)
    # end

    @participation = Participation.new
    participations = Participation.where('event_id=? and status=?', params[:event_id], "参加")
    @users = User.where(id: participations.map{|t| t.user_id})

  end

  def halfway

    @event = Event.find(params[:event_id])
    binding.pry
    case params[:member_select]
      when  "all"
        participations = Participation.where('event_id=? and status=?', params[:event_id], "参加")
        random_team = participations.shuffle
        team = random_team.to_a.in_groups(2, false)                   # チームを2つに分ける
        @member1 = team[0]                                              # team配列1つ目を1チーム目とする
        @member2 = team[1]                                              # team配列2つ目を2チーム目とする
        
        # 2チーム自動で作成
        2.times do
          Team.create(
            event_id: params[:event_id],
            name: Takarabako.open,
          )
        end

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
        @game = @event.games.build
        binding.pry






      when  "select"
        participations = Participation.where(id: params[:participation])
        binding.pry
        random_team = participations.shuffle
        team = random_team.to_a.in_groups(2, false)                   # チームを2つに分ける
        @member_1 = team[0]                                              # team配列1つ目を1チーム目とする
        @member_2 = team[1]                                              # team配列2つ目を2チーム目とする  
        
        # 2チーム自動で作成
        2.times do
          Team.create(
            event_id: params[:event_id],
            name: Takarabako.open,
          )
        end

        # チーム詳細を2チーム分作成する（どの会員がどのチームに属しているか分かるようにする）
        @member_1.each do |member1|                                        # 1つ目のチーム詳細作成
          TeamDetail.create(
            team_id: Team.order("created_at DESC").second,
            participation_id: member1.user_id,
          )
        end

        @member_2.each do |member2|                                         # 2つ目のチーム詳細作成
          TeamDetail.create(
            team_id: Team.order("created_at DESC").first,
            participation_id: member2.user_id,
          )
        end
        @team1 = Team.order("created_at DESC").second
        @team2 = Team.order("created_at DESC").first
        @game = Game.new
        @event = Event.find(params[:event_id])
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
      params.require(:participation).permit(:user_id, :event_id, :status) 
    end

    def participation_id_params
      params.permit(participation: [])
    end
    
    def user_parms
      params.require(:user).permit(:id)
    end
end
