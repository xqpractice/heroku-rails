class ExampleMailer < ApplicationMailer

  def hello
    @name = 'cxq'
    mail(from: 'Hello <superwingcool@gmail.com>', to: 'yian@thoughtworks.com', subject: 'This mail from hello action with gmail')
  end

  def user
    @name = 'Yi An'
    mail(from: 'Yi An <xqcao@resource.com>', to: 'thomascxq@126.com', subject: '张京军，哈哈。This mail from user action with tw')
  end

  def send_mail(mail_obj)
    mg_client = Mailgun::Client.new(ENV['MAILGUN_API_KEY'])
    message_params = {
      from: 'Xiaoqi Cao <smtp-new-probation@thoughtworks.com>',
      to: mail_obj['to'],
      subject: mail_obj['subject'],
      text: mail_obj['message']
    }
    mg_client.send_message ENV['MAILGUN_DOMAIN'], message_params
  end

  def mailgun
    # mg_client = Mailgun::Client.new(ENV['MAILGUN_API_KEY'])
    mg_client = Mailgun::Client.new('key-26dd98e69e0dd9971893b4497e00f938')
    message_params = {
      from: 'Xiaoqi Cao <smtp-new-probation@thoughtworks.com>',
      to: 'thomascxq@126.com',
      subject: 'This mail sent by mailgun',
      text: 'It is really easy to send a message!'
    }
    mg_client.send_message 'sandbox6a6c7dea6ea946d3b2f0b84543c0374e.mailgun.org', message_params
  end

  def mailq
    # mg_client = Mailgun::Client.new(ENV['MAILGUN_API_KEY'])
    mg_client = Mailgun::Client.new('key-26dd98e69e0dd9971893b4497e00f938')
    message_params = {
      from: 'Xiaoqi Cao <xqcao@126.com>',
      to: 'thomascxq@gmail.com',
      subject: 'This mail sent by mailgun',
      text: 'It is really easy to send a message!'
    }
    mg_client.send_message 'mailgun.xqcao.com', message_params
  end

end
