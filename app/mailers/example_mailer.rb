class ExampleMailer < ApplicationMailer

  def hello
    @name = 'cxq'
    mail(from: 'Hello <thomascxq@gmail.com>', to: 'xqcao@thoughtworks.com', subject: 'Hello You')
  end

end
