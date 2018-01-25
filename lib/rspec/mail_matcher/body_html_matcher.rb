require 'cgi'

module RSpec::MailMatcher
  class BodyHtmlMatcher < BodyMatcher
    private
    def mail_body
      body = if @mail.multipart?
               @mail.html_part.body
             else
               @mail.html? ? @mail.body : ""
             end
      CGI.unescapeHTML(body.to_s).gsub!(/(&nbsp;|\s)+/, " ")
    rescue
      ""
    end
  end
end
