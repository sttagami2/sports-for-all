class UsersController < ApplicationController
  def index
    @user = current_user
    @users = User.all
  end

  def show
    participations = Participation.where('user_id=?', current_user.id)
    @events = Event.where(id: participations.map{|t| t.event_id})
    # @event_past = Event.where('id=? and finish_date<?', participations.map{|t| t.event_id}, Date.today)
    # @event_feature = Event.where('id=? and start_date>?', participations.map{|t| t.event_id}, Date.today)
    @user = User.find(params[:id])
    @user_relation = current_user
    @resolutes = Resolute.where(user_id: @user.id)
    
    # 会員が参加した試合のidを取得する
    game_ids = []
    @resolutes.each do |resolute|
      game_ids.push((resolute.game_id).to_i)
    end
    @games = Game.where(id: game_ids)
    
    # @events = Participation.where('user_id=? and status=?', current_user.id, "参加" )
    
    # チャット機能
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
