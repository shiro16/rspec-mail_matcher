module RSpec::MailMatcher
  class DeliverToMatcher < AddressMatcher
    def description
      "have deliver to as #{@expected}"
    end

    def failure_message
      "expected #{mails.inspect} not to deliver to #{@expected.inspect}, but it did"
    end

    private
    def mails
      @mail.to
    end
  end
end
