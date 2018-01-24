module RSpec::MailMatcher
  class BodyTextMatcher < BodyMatcher
    private
    def mail_body
      @mail.multipart? ? @mail.text_part.body.to_s : @mail.body.to_s
    rescue
      ""
    end
  end
end
