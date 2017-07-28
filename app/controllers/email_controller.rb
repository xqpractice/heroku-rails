class EmailController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
  end

  def send_email
    puts '-------------start---------------'
    ExampleMailer.send_mail(params).deliver
    puts '-------------end---------------'
  end

  def hello
    puts '-------------start---------------'
    ExampleMailer.hello.deliver
    puts '-------------end---------------'
  end

  def user
    ExampleMailer.user.deliver
  end

  def mailgun
    ExampleMailer.mailgun.deliver
  end
end
