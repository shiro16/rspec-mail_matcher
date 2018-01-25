module RSpec::MailMatcher
  class BodyTextMatcher < BodyMatcher
    private
    def mail_body
      if @mail.multipart?
        @mail.text_part.body
      else
        @mail.text? ? @mail.body : ""
      end.to_s
    rescue
      ""
    end
  end
end
