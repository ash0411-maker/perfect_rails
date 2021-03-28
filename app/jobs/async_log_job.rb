class AsyncLogJob < ApplicationJob
  queue_as :default

  def perform(message: "hello")
    # Do something later
    AsyncLog.create!(message: message)
  end
end
