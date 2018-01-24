module RSpec::MailMatcher
  class SubjectMatcher
    def initialize(expected)
      @expected = expected
    end

    def matches?(mail)
      @mail = mail
      if @expected.kind_of?(String)
        @mail.subject.include?(@expected)
      else
        !!(@mail.subject =~ @expected)
      end
    end

    def description
      if @expected.kind_of?(String)
        "have subject including #{@expected.inspect}"
      else
        "have subject matching #{@expected.inspect}"
      end
    end

    def failure_message
      if @expected.kind_of?(String)
        "expected the subject to contain #{@expected.inspect} but was #{@mail.subject.inspect}"
      else
        "expected the subject to match #{@expected.inspect}, but did not. Actual body was: #{@mail.subject.inspect}"
      end
    end
  end
end
