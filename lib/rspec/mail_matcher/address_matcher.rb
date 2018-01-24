module RSpec::MailMatcher
  class AddressMatcher
    def initialize(expected)
      @expected = expected
    end

    def matches?(mail)
      @mail = mail
      mails.include?(@expected)
    end

    private
    def mails
      raise NotImplementedError, "You must implement #{self.class}##{__method__}"
    end
  end
end
