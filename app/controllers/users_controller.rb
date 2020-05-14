class UsersController < ApplicationController
  def index
    @user = current_user
    @users = User.all
  end

  def show
    participations = Participation.where('user_id=?', current_user.id)
    @events = Event.where(id: participations.map{|t| t.event_id})
    @user = User.find(params[:id]);
    @user_relation = current_user
    # @events = Participation.where('user_id=? and status=?', current_user.id, "参加" )
  end

  def edit
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
