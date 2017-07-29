class GeeMailer < ApplicationMailer
  default from: "ksteadymailer@gmail.com"
  

  def sendmail_confirm
    @greeeting = "Hi"
 
    mail to: "s15mm302@gmail.com", subject: "ActionMailer test"
  end
end
