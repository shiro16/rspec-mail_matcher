module RSpec::MailMatcher
  class BodyTextMatcher < BodyMatcher
    private
    def mail_body
      @mail.text_part.body.to_s
    rescue
      ""
    end
  end
end
