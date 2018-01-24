require "rspec/mail_matcher/version"
require "rspec/mail_matcher/body_matcher"
require "rspec/mail_matcher/address_matcher"
require "rspec/mail_matcher/deliver_to_matcher"
require "rspec/mail_matcher/deliver_from_matcher"
require "rspec/mail_matcher/reply_to_matcher"
require "rspec/mail_matcher/subject_matcher"
require "rspec/mail_matcher/body_text_matcher"
require "rspec/mail_matcher/body_html_matcher"

module RSpec
  module MailMatcher
    def deliver_to(expected)
     DeliverToMatcher.new(expected)
    end

    def deliver_from(expected)
      DeliverFromMatcher.new(expected)
    end

    def reply_to(expected)
      ReplyToMatcher.new(expected)
    end

    def have_subject(expected)
      SubjectMatcher.new(expected)
    end

    def have_body_text(expected)
      BodyTextMatcher.new(expected)
    end

    def have_body_html(expected)
      BodyHtmlMatcher.new(expected)
    end
  end
end
