namespace :hello do
  desc "Hello"
  task :hello => :environment do
    puts "-------hello-----------"
    Rails.logger.info "#{self.class.name}: I'm a hello rake task"
  end
end
