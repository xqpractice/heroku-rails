class HelloJob < ApplicationJob
  queue_as :default

  before_enqueue do |job|
    Rails.logger.debug "#{self.class.name}: I'm in queue now."
  end

  def perform(*args)
    Rails.logger.debug "#{self.class.name}: I'm performing my job with arguments: #{args.inspect}"
  end
end

HelloJob.perform_later('hello')
