class UsersController < ApplicationController
  def show
    participations = Participation.where('user_id=?', current_user.id)
    @events = Event.where(id: participations.map{|t| t.event_id})
    @user = User.find(params[:id]);
    # @events = Participation.where('user_id=? and status=?', current_user.id, "参加" )
  end

  def edit
  end

  def update
  end

  private
    def user_params
      params.require(:user).permit(:name, :name_k, :image, :introduction, :email, :age, :phone_number)
    end
end
