class UsersController < ApplicationController
  def index
    @user = current_user
    @users = User.all
  end

  def show
    participations = Participation.where('user_id=?', current_user.id)
    @events = Event.where(id: participations.map{|t| t.event_id})
    @user = User.find(params[:id])
    @user_relation = current_user


    # <start> 会員の勝利数を取得する処理
    @resolutes = Resolute.where(user_id: @user.id)                      # 参加した試合情報を取得する  ※ @resolutes.countで参加した試合数が取得できる
    game_ids = []                                                       # 会員が参加した試合のidを取得するため空の配列を定義
    @resolutes.each do |resolute|                                       # 参加した試合のidから試合idのみ取得する
      game_ids.push((resolute.game_id).to_i)
    end
    
    @games = Game.where(id: game_ids)                                   # 取得した試合idから試合結果情報を取得する
    win_ids = []                                                        # 試合結果情報から勝利したチームのidを取得するため空の配列を定義
    @games.each do |game|                                               # 取得した試合結果情報から勝利したチームのidを取得する
      win_ids.push((game.win_id).to_i)
    end

    team_details = TeamDetail.where(team_id: win_ids)                   # 取得した勝利チームのidからそのチームに所属していたチーム詳細情報を取得する
    participation_ids = []                                              # チーム詳細情報から勝利したチームに所属していた参加者のidを取得するため空の配列を定義
    team_details.each do |team_detail|                                  # 取得した参加者情報から参加者idを取得する
      participation_ids.push((team_detail.participation_id).to_i)
    end

    # participations = Participation.where(id: participation_ids)       # 取得した参加者idから参加者情報を取得する
    # user_ids = []                                                     # 参加者情報から会員のidを取得するため空の配列を定義
    # participations.each do |participation|                            # 取得した参加者idから会員idを取得する
    #   user_ids.push((participation.user_id).to_i)
    # end

    count = 0
    participation_ids.each do |participation_id|
      if Participation.find_by("id=? and user_id=?", participation_id, current_user.id) != nil
        count += 1
      end
    end
    @win_count = count
    # <finish> 会員の勝利数を取得する処理


    
    # <start> チャット機能
    @current_user_room = UserRoom.where(user_id: current_user.id)
		@user_user_room = UserRoom.where(user_id: @user.id)
		if @user.id != current_user.id
      @current_user_room.each do |current_user|
        @user_user_room.each do |user|
          if current_user.room_id == user.room_id then
            @isRoom = true
            @roomId = user.room_id
          end
        end
      end
      if @isRoom
      else
        @room = Room.new
        @user_room = UserRoom.new
      end
    end
    # <finish> チャット機能
  end

  def edit
    @user = User.find(params[:id])
    
  end

  def update
  end

  def following
    @user = User.find(params[:id])
		@users = @user.followings                 # followingsメソッドはuserモデルに記述してある
  end

  def followers
    @user = User.find(params[:id])
		@users = @user.followers                  # followersメソッドはuserモデルに記述してある
  end

  private
    def user_params
      params.require(:user).permit(:name, :name_k, :image, :introduction, :email, :age, :phone_number)
    end
end
