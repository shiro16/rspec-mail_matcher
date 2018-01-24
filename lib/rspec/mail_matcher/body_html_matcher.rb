require 'cgi'

module RSpec::MailMatcher
  class BodyHtmlMatcher < BodyMatcher
    private
    def mail_body
      CGI.unescapeHTML(@mail.html_part.body.to_s)
    rescue
      ""
    end
  end
end
