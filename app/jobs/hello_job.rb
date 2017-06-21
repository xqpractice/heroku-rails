class HelloJob < ApplicationJob
  queue_as :default

  def perform(*args)
    File.open('a.text', "w+") do |f|
      f.write('hello job')
    end
    Rails.logger.debug "#{self.class.name}: I'm performing my job with arguments: #{args.inspect}"
  end
end
