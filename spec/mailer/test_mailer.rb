class TestMailer < ActionMailer::Base
  self.view_paths = "spec/mailer"
  default from: "deliver_from@example.com", reply_to: "reply_to@example.com"

  def test_mail
    mail(to: "deliver_to@example.com", subject: 'test mail subject')
  end
end
