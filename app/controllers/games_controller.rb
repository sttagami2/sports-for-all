class GamesController < ApplicationController
  def index
    @games = Game.game_index(params[:event_id])
  end

  def new
    @event = Event.find(params[:event_id])
    @participation = Participation.new
    participations = Participation.participation_index(params[:event_id])
    @users = User.where(id: participations.map { |t| t.user_id })
  end

  def battles
    @event = Event.find(params[:event_id])
    @game = Game.new
    @number_of_teams = params[:number_of_teams].to_i
    @game_index = params[:game_index].to_i

    case @number_of_teams
    when 2
      @teams = []
      @teams.push(Team.team_detail(params[:event_id]).second)
      @teams.push(Team.team_detail(params[:event_id]).first)

      # 1チーム目のメンバーを取得
      team_detail1 = TeamDetail.where(team_id: @teams.first.id)
      participation_ids1 = []
      team_detail1.each do |team_detail1|
        participation_ids1.push(team_detail1.participation_id.to_i)
      end
      @member1 = Participation.where(id: participation_ids1)
      
      # 2チーム目のメンバーを取得
      team_detail2 = TeamDetail.where(team_id: @teams.second.id)
      participation_ids2 = []
      team_detail2.each do |team_detail2|
        participation_ids2.push(team_detail2.participation_id.to_i)
      end
      @member2 = Participation.where(id: participation_ids2)
      
      binding.pry


    when 3
      @teams = []
      @teams.push(Team.team_detail(params[:event_id]).third)
      @teams.push(Team.team_detail(params[:event_id]).second)
      @teams.push(Team.team_detail(params[:event_id]).first)

      case @game_index
      when 1
      # 1チーム目のメンバーを取得
      team_detail1 = TeamDetail.where(team_id: @teams.first.id)
      participation_ids1 = []
      team_detail1.each do |team_detail1|
        participation_ids1.push(team_detail1.participation_id.to_i)
      end
      @member1 = Participation.where(id: participation_ids1)
      
      # 2チーム目のメンバーを取得
      team_detail2 = TeamDetail.where(team_id: @teams.second.id)
      participation_ids2 = []
      team_detail2.each do |team_detail2|
        participation_ids2.push(team_detail2.participation_id.to_i)
      end
      @member2 = Participation.where(id: participation_ids2)

      when 2
      # 1チーム目のメンバーを取得
      team_detail1 = TeamDetail.where(team_id: @teams.first.id)
      participation_ids1 = []
      team_detail1.each do |team_detail1|
        participation_ids1.push(team_detail1.participation_id.to_i)
      end
      @member1 = Participation.where(id: participation_ids1)
      
      # 2チーム目のメンバーを取得
      team_detail2 = TeamDetail.where(team_id: @teams.third.id)
      participation_ids2 = []
      team_detail2.each do |team_detail2|
        participation_ids2.push(team_detail2.participation_id.to_i)
      end
      @member2 = Participation.where(id: participation_ids2)
      
      when 3
      # 1チーム目のメンバーを取得
      team_detail1 = TeamDetail.where(team_id: @teams.second.id)
      participation_ids1 = []
      team_detail1.each do |team_detail1|
        participation_ids1.push(team_detail1.participation_id.to_i)
      end
      @member1 = Participation.where(id: participation_ids1)
      
      # 2チーム目のメンバーを取得
      team_detail2 = TeamDetail.where(team_id: @teams.third.id)
      participation_ids2 = []
      team_detail2.each do |team_detail2|
        participation_ids2.push(team_detail2.participation_id.to_i)
      end
      @member2 = Participation.where(id: participation_ids2)
      end
      
    end
  end

  def halfway
    @event = Event.find(params[:event_id])
    @game = Game.new
    @number_of_teams = params[:number_of_teams].to_i

    # チームを自動で作成
    @number_of_teams.times do
      Team.create(
        event_id: params[:event_id],
        name: Takarabako.open,
      )
    end

    case @number_of_teams
    when 2
      case params[:member_select]
      when  "all"
        participations = Participation.participation_index(params[:event_id])
        random_team = participations.shuffle
        team = random_team.to_a.in_groups(2, false) # チームを2つに分ける
        @member1 = team[0]                                              # team配列1つ目を1チーム目とする
        @member2 = team[1]                                              # team配列2つ目を2チーム目とする

        # チーム詳細を2チーム分作成する（どの会員がどのチームに属しているか分かるようにする）
        @member1.each do |member1| # 1つ目のチーム詳細作成
          TeamDetail.create!(
            team_id: Team.team_detail(params[:event_id]).second.id,
            participation_id: member1.id,
          )
        end

        @member2.each do |member2| # 2つ目のチーム詳細作成
          TeamDetail.create!(
            team_id: Team.team_detail(params[:event_id]).first.id,
            participation_id: member2.id,
          )
        end

        @team1 = Team.team_detail(params[:event_id]).second
        @team2 = Team.team_detail(params[:event_id]).first
        @event = Event.find(params[:event_id])
        @teams = []
        @teams.push(@team1)
        @teams.push(@team2)
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
            team_id: Team.team_detail(params[:event_id]).second.id,
            participation_id: member1.id,
          )
        end

        @member2.each do |member2|                        # 2つ目のチーム詳細作成
          TeamDetail.create(
            team_id: Team.team_detail(params[:event_id]).first.id,
            participation_id: member2.id,
          )
        end

        @team1 = Team.team_detail(params[:event_id]).second
        @team2 = Team.team_detail(params[:event_id]).first
        @event = Event.find(params[:event_id])
        @teams = []
        @teams.push(@team1)
        @teams.push(@team2)

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

        # チーム詳細を2チーム分作成する（どの会員がどのチームに属しているか分かるようにする）
        @member1.each do |member1|                        # 1つ目のチーム詳細作成
          TeamDetail.create(
            team_id: Team.team_detail(params[:event_id]).second.id,
            participation_id: member1.id,
          )
        end

        @member2.each do |member2|                        # 2つ目のチーム詳細作成
          TeamDetail.create(
            team_id: Team.team_detail(params[:event_id]).first.id,
            participation_id: member2.id,
          )
        end

        @team1 = Team.team_detail(params[:event_id]).second
        @team2 = Team.team_detail(params[:event_id]).first
        @event = Event.find(params[:event_id])
        @teams = []
        @teams.push(@team1)
        @teams.push(@team2)

      end


    when 3
      case params[:member_select]
      when  "all"
        participations = Participation.participation_index(params[:event_id])
        random_team = participations.shuffle
        team = random_team.to_a.in_groups(3, false) # チームを3つに分ける
        @member1 = team[0]                                              # team配列1つ目を1チーム目とする
        @member2 = team[1]                                              # team配列2つ目を2チーム目とする
        @member3 = team[2]                                              # team配列3つ目を3チーム目とする

        # チーム詳細を2チーム分作成する（どの会員がどのチームに属しているか分かるようにする）
        @member1.each do |member1| # 1つ目のチーム詳細作成
          TeamDetail.create!(
            team_id: Team.team_detail(params[:event_id]).third.id,
            participation_id: member1.id,
          )
        end

        @member2.each do |member2| # 2つ目のチーム詳細作成
          TeamDetail.create!(
            team_id: Team.team_detail(params[:event_id]).second.id,
            participation_id: member2.id,
          )
        end

        @member3.each do |member3| # 3つ目のチーム詳細作成
          TeamDetail.create!(
            team_id: Team.team_detail(params[:event_id]).first.id,
            participation_id: member3.id,
          )
        end

        @team1 = Team.team_detail(params[:event_id]).third
        @team2 = Team.team_detail(params[:event_id]).second
        @team3 = Team.team_detail(params[:event_id]).first
        @event = Event.find(params[:event_id])
        @teams = []
        @teams.push(@team1)
        @teams.push(@team2)
        @teams.push(@team3)

      when  "select"
        # newページで取得した参加者の情報をParticipationのレコード上のidと合致させるための処理
        user_ids = []
        params[:participation_select][:user_id].each do |id|
          user_ids.push(id.to_i)
        end

        # newページで取得した参加者のidからチーム分けを行う
        participations = Participation.where(event_id: params[:event_id]).where(user_id: user_ids)
        random_team = participations.shuffle
        team = random_team.to_a.in_groups(3, false) # チームを2つに分ける
        @member1 = team[0]
        @member2 = team[1]
        @member3 = team[2]

        # チーム詳細を2チーム分作成する（どの会員がどのチームに属しているか分かるようにする）
        @member1.each do |member1|                        # 1つ目のチーム詳細作成
          TeamDetail.create(
            team_id: Team.team_detail(params[:event_id]).third.id,
            participation_id: member1.id,
          )
        end

        @member2.each do |member2|                        # 2つ目のチーム詳細作成
          TeamDetail.create(
            team_id: Team.team_detail(params[:event_id]).second.id,
            participation_id: member2.id,
          )
        end

        @member3.each do |member3|                        # 2つ目のチーム詳細作成
          TeamDetail.create(
            team_id: Team.team_detail(params[:event_id]).first.id,
            participation_id: member3.id,
          )
        end

        @team1 = Team.team_detail(params[:event_id]).third
        @team2 = Team.team_detail(params[:event_id]).second
        @team3 = Team.team_detail(params[:event_id]).first
        @event = Event.find(params[:event_id])
        @teams = []
        @teams.push(@team1)
        @teams.push(@team2)
        @teams.push(@team3)

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

        # チーム詳細を2チーム分作成する（どの会員がどのチームに属しているか分かるようにする）
        @member1.each do |member1|                        # 1つ目のチーム詳細作成
          TeamDetail.create(
            team_id: Team.team_detail(params[:event_id]).second.id,
            participation_id: member1.id,
          )
        end

        @member2.each do |member2|                        # 2つ目のチーム詳細作成
          TeamDetail.create(
            team_id: Team.team_detail(params[:event_id]).first.id,
            participation_id: member2.id,
          )
        end

        @team1 = Team.team_detail(params[:event_id]).second
        @team2 = Team.team_detail(params[:event_id]).first
        @event = Event.find(params[:event_id])

      end
    end
  end

  def create
    @game = Game.new
    @game.event_id = params[:event_id]
    team1 = Team.team_detail(params[:event_id]).second
    team2 = Team.team_detail(params[:event_id]).first
    score1 = params[:score1].to_i
    score2 = params[:score2].to_i

    if score1 > score2
      @game.win_id = team1.id
      @game.lose_id = team2.id
      @game.win_score = score1
      @game.lose_score = score2

    else
      @game.win_id = team2.id
      @game.lose_id = team1.id
      @game.win_score = score2
      @game.lose_score = score1
    end
    @game.save

    GameDetail.create!(
      game_id: @game.id,
      team_id: @game.win_id,
    )
    GameDetail.create!(
      game_id: @game.id,
      team_id: @game.lose_id,
    )

    # チームの参加者を探すためにチーム詳細を探す
    team_details = []
    winer_team_details = TeamDetail.where(team_id: @game.win_id)
    loser_team_details = TeamDetail.where(team_id: @game.lose_id)
    team_details << winer_team_details
    team_details << loser_team_details
    team_details.flatten!

    # チーム詳細で参加者id(participation_id)のみを取得する
    participation_ids = []
    team_details.each do |team_detail|
      participation_ids.push(team_detail.participation_id.to_i)
    end

    # 参加者詳細を取得する
    participations = Participation.where(id: participation_ids)

    # 参加者詳細から会員id(user_id)のみを取得する
    user_ids = []
    participations.each do |participation|
      user_ids.push(participation.user_id)
    end

    # 試合参加メンバーを取得する
    @members = User.where(id: user_ids)

    @members.each do |member|
      Resolute.create!(
        user_id: member.id,
        game_id: @game.id,
      )
    end

    # redirect_to event_game_path(event_id: @game.event_id, id: @game.id)
    redirect_back(fallback_location: root_path)
  end

  def edit
    @game = Game.find(params[:id])
    # 勝ったチームと負けたチームを探す
    @team_winer = Team.find_by(id: @game.win_id)
    @team_loser = Team.find_by(id: @game.lose_id)

    # チーム名を取得する
    @team_winer_name = @team_winer.name
    @team_loser_name = @team_loser.name

    # チームの参加者を探すためにチーム詳細を探す
    winer_details = TeamDetail.where(team_id: @team_winer.id)
    loser_details = TeamDetail.where(team_id: @team_loser.id)

    # チーム詳細で参加者id(participation_id)のみを取得する
    participation_winer_ids = []
    winer_details.each do |winer_detail|
      participation_winer_ids.push(winer_detail.participation_id.to_i)
    end
    participation_loser_ids = []
    loser_details.each do |loser_detail|
      participation_loser_ids.push(loser_detail.participation_id.to_i)
    end

    # 勝った参加者詳細、負けた参加者詳細を取得する
    participation_winer = Participation.where(id: participation_winer_ids)
    participation_loser = Participation.where(id: participation_loser_ids)

    # 参加者詳細から会員id(user_id)のみを取得する
    winer_user_ids = []
    participation_winer.each do |winer|
      winer_user_ids.push(winer.user_id.to_i)
    end
    loser_user_ids = []
    participation_loser.each do |loser|
      loser_user_ids.push(loser.user_id.to_i)
    end

    # チームメンバーを取得する
    @member_winer = User.where(id: winer_user_ids)
    @member_loser = User.where(id: loser_user_ids)
    @win_score = @game.win_score
    @lose_score = @game.lose_score
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    redirect_to event_game_path
  end

  def destroy
  end

  def show
    @game = Game.find(params[:id])

    # 勝ったチームと負けたチームを探す
    @team_winer = Team.find_by(id: @game.win_id)
    @team_loser = Team.find_by(id: @game.lose_id)

    # チーム名を取得する
    @team_winer_name = @team_winer.name
    @team_loser_name = @team_loser.name

    # チームの参加者を探すためにチーム詳細を探す
    winer_details = TeamDetail.where(team_id: @team_winer.id)
    loser_details = TeamDetail.where(team_id: @team_loser.id)

    # チーム詳細で参加者id(participation_id)のみを取得する
    participation_winer_ids = []
    winer_details.each do |winer_detail|
      participation_winer_ids.push(winer_detail.participation_id.to_i)
    end
    participation_loser_ids = []
    loser_details.each do |loser_detail|
      participation_loser_ids.push(loser_detail.participation_id.to_i)
    end

    # 勝った参加者詳細、負けた参加者詳細を取得する
    participation_winer = Participation.where(id: participation_winer_ids)
    participation_loser = Participation.where(id: participation_loser_ids)

    # 参加者詳細から会員id(user_id)のみを取得する
    winer_user_ids = []
    participation_winer.each do |winer|
      winer_user_ids.push(winer.user_id.to_i)
    end
    loser_user_ids = []
    participation_loser.each do |loser|
      loser_user_ids.push(loser.user_id.to_i)
    end

    # チームメンバーを取得する
    @member_winer = User.where(id: winer_user_ids)
    @member_loser = User.where(id: loser_user_ids)
    @win_score = @game.win_score
    @lose_score = @game.lose_score
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
