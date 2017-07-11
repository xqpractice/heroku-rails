class WelcomeController < ApplicationController
  def index
    puts '-------------start---------------'
    ExampleMailer.hello.deliver
    puts '-------------end---------------'
  end
end
