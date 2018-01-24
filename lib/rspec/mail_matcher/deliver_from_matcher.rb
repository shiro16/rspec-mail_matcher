module RSpec::MailMatcher
  class DeliverFromMatcher < AddressMatcher
    def description
      "have deliver from as #{@expected}"
    end

    def failure_message
      "expected #{mails.inspect} not to deliver from #{@expected.inspect}, but it did"
    end

    private
    def mails
      @mail.from
    end
  end
end
