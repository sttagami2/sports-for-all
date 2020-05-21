class SearchController < ApplicationController
  def search
    @content = params["search"]["content"]
    @user_search = User.where("name LIKE ?", "%#{@content}%")
    @event_search = Event.where("event_name LIKE ?", "%#{@content}%")
  end
end
