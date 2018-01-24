# Rspec::MailMatcher



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec-mail_matcher'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-mail_matcher

## Usage

### Configuration

```
# spec/spec_helper.rb
RSpec.configuration.include RSpec::MailMatcher
```

### Matcher

see: [mail_matcher.rb](https://github.com/shiro16/rspec-mail_matcher/blob/master/lib/rspec/mail_matcher.rb)

### Example

```
RSpec.describe RSpec::MailMatcher, type: :mailer do
  let(:mail) { TestMailer.test_mail }

  subject { mail }

  describe '#deliver_to' do
    it { is_expected.to deliver_to("deliver_to@example.com") }
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/shiro16/rspec-mail_matcher. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Rspec::MailMatcher project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/shiro16/rspec-mail_matcher/blob/master/CODE_OF_CONDUCT.md).
