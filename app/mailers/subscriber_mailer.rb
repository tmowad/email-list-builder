class SubscriberMailer < ActionMailer::Base
  default from: "tom@tommowad.com"

  def confirm_email(subscriber)
    @subscriber = subscriber
    @url = "http://localhost:3000/confirm?key=#{subscriber.confirm_key}"
    mail(:to => subscriber.email, :subject => "URGENT: Please confirm your spot on our waiting list!")
  end
end
