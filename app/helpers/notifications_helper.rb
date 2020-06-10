module NotificationsHelper
  # 未確認の通知があるか検索をする
  def unchecked_notifications
    @notifications = current_user.passive_notifications.where(checked: false)
  end
end
