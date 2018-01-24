
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rspec/mail_matcher/version"

Gem::Specification.new do |spec|
  spec.name          = "rspec-mail_matcher"
  spec.version       = RSpec::MailMatcher::VERSION
  spec.authors       = ["shiro16"]
  spec.email         = ["nyanyanyawan24@gmail.com"]

  spec.summary       = %q{This library provides RSpec matcher for testing ActionMailer.}
  spec.description   = %q{RSpec matcher for testing ActionMailer}
  spec.homepage      = "https://github.com/shiro16/rspec-mail_matcher"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "actionmailer", '~> 5.1.4'
end
