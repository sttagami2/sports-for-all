class NotificationMailer < ApplicationMailer
  default from: "tester.player.2020@gmail.com"

  def send_confirm_to_user
    today = Date.today

    # events = Event.where("start_date=?", today+3)
    events = Event.first
    events.each do |event|
      participations = Participation.where('event_id=? and status=?', event.id, "参加")
      users = User.where(id: participations.map{|t| t.user_id})
      users.each do |user|
        mail(
          to: user.email,
          subject: "イベント開催日のお知らせ"
        ) do |format|
          format.text                         # 上記メールのタイトルと宛先をformatに当てはめる
        end
      end
    end
  end
end
