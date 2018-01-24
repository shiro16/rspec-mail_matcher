module RSpec::MailMatcher
  class ReplyToMatcher < AddressMatcher
    def description
      "have reply to as #{@expected}"
    end

    def failure_message
      "expected #{mails.inspect} not to reply to #{@expected.inspect}, but it did"
    end

    private
    def mails
      @mail.reply_to
    end
  end
end
