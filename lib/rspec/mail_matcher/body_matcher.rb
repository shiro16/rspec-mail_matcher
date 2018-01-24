module RSpec::MailMatcher
  class BodyMatcher
    def initialize(expected)
      @expected = expected
    end

    def matches?(mail)
      @mail = mail
      if @expected.kind_of?(String)
        include?
      else
        match?
      end
    end

    def description
      if @expected.kind_of?(String)
        "have body including #{@expected.inspect}"
      else
        "have body matching #{@expected.inspect}"
      end
    end

    def failure_message
      if @expected.kind_of?(String)
        "expected the body to contain #{@expected.inspect} but was #{mail_body.inspect}"
      else
        "expected the body to match #{@expected.inspect}, but did not. Actual body was: #{mail_body.inspect}"
      end
    end

    private
    def mail_body
      raise NotImplementedError, "You must implement #{self.class}##{__method__}"
    end

    def include?
      mail_body.include?(@expected)
    end

    def match?
      !!(mail_body =~ @expected)
    end
  end
end
