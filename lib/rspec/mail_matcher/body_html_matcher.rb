require 'cgi'

module RSpec::MailMatcher
  class BodyHtmlMatcher < BodyMatcher
    private
    def mail_body
      body = @mail.multipart? ? @mail.html_part.body : @mail.body
      CGI.unescapeHTML(body.to_s).gsub!(/(&nbsp;|\s)+/, " ")
    rescue
      ""
    end
  end
end
