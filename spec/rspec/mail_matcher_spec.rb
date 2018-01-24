RSpec.describe RSpec::MailMatcher, type: :mailer do
  let(:mail) { TestMailer.test_mail }

  subject { mail }

  describe '#deliver_to' do
    it { is_expected.to deliver_to("deliver_to@example.com") }
    it { is_expected.not_to deliver_to("test@example.com") }
  end

  describe '#deliver_from' do
    it { is_expected.to deliver_from("deliver_from@example.com") }
    it { is_expected.not_to deliver_from("test@example.com") }
  end

  describe '#reply_to' do
    it { is_expected.to reply_to("reply_to@example.com") }
    it { is_expected.not_to reply_to("test@example.com") }
  end

  describe '#have_subject' do
    it { is_expected.to have_subject("mail") }
    it { is_expected.not_to have_subject("body") }
    it { is_expected.to have_subject(/mail/) }
    it { is_expected.not_to have_subject(/body/) }
  end

  describe '#have_body_text' do
    it { is_expected.to have_body_text("text") }
    it { is_expected.not_to have_body_text("subject") }
    it { is_expected.to have_body_text(/text/) }
    it { is_expected.not_to have_body_text(/subject/) }
  end

  describe '#have_body_html' do
    it { is_expected.to have_body_html("&test2=2") }
    it { is_expected.not_to have_body_html("&test3=3") }
    it { is_expected.to have_body_html(/&test2/) }
    it { is_expected.not_to have_body_html(/&test3/) }
  end
end
