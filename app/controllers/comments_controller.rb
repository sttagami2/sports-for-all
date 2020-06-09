class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    @event = Event.find(params[:event_id])
    @comment = current_user.comments.new(comment_params)
    @comment.event_id = @event.id
    @comment.user_id = current_user.id
    if @comment.save
      @event.create_notification_comment!(current_user, @comment.id)
    end
    render :index
  end

  def destroy
    @event = Event.find(params[:event_id])
    @comment = @event.comments.find(params[:id])
    @comment.destroy
    render :index
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :event_id, :user_id)
  end
end
