class NotificationJob < ApplicationJob
  queue_as :default

  def perform(args)
    GCM.new(ENV['GCM_API_KEY']).send(args)
  end
end
