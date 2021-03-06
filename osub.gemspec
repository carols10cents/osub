# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "osub/version"

Gem::Specification.new do |s|
  s.name        = "osub"
  s.version     = OSub::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Hackers of the Severed Hand']
  s.email       = ['hotsh@xomb.org']
  s.homepage    = "http://github.com/hotsh/osub"
  s.summary     = %q{This is a simple implementation of a subscriber in the PubSubHubbub protocol.}
  s.description = %q{This is a simple implementation of a subscriber in the PubSubHubbub protocol.}

  s.rubyforge_project = "osub"

  s.add_dependency "ruby-hmac"
  s.add_dependency "ostatus"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
