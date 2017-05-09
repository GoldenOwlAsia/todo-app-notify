class Notification < ApplicationRecord
  validates_uniqueness_of :uid
  after_create :push_nofitication
  after_update :push_nofitication
  after_destroy :unsubscribe

  def self.push_nofitications(params)
    all.each do |notify|
      notify.update(params)
    end
  end

  private

  def push_nofitication
    NotificationJob.perform_later(format_notification) unless message.nil?
  end

  def format_notification
    [
      uid,
      {
        data: {
          title: title,
          message: message
        }
      }
    ]
  end

  def unsubscribe
    NotificationJob.perform_now(uid)
  end
end
