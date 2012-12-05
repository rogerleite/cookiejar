# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cookiejar}
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Waite"]
  s.date = %q{2010-06-12}
  s.description = %q{Allows for parsing and returning cookies in Ruby HTTP client code}
  s.email = %q{david@alkaline-solutions.com}
  s.files = ["lib/cookiejar/cookie.rb", "lib/cookiejar/cookie_validation.rb", "lib/cookiejar/jar.rb", "lib/cookiejar.rb", "test/cookie_test.rb", "test/cookie_validation_test.rb", "test/jar_test.rb"]
  s.homepage = %q{http://alkaline-solutions.com}
  s.rdoc_options = ["--title", "CookieJar -- Client-side HTTP Cookies"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Client-side HTTP Cookie library}

  s.add_development_dependency "rake", "~> 0.9.5"
  s.add_development_dependency "yard"
  s.add_development_dependency "json"
  s.add_development_dependency "rspec", "~> 1.3.2"
end
