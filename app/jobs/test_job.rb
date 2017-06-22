class TestJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Rails.logger.debug "#{self.class.name}: I'm performing test job with arguments: #{args.inspect}"
  end

  def after_perform()
    TestJob.set(wait: 5.minutes).perform_later(1, 2, 3)
  end

  def reschedule_at(current_time, attempts)
    current_time + 30.seconds
  end
end

TestJob.set(wait: 5.minutes).perform_later(1, 2, 3)
