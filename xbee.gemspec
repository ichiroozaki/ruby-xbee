# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xbee/version'

Gem::Specification.new do |spec|
  spec.name          = "xbee"
  spec.version       = Xbee::VERSION
  spec.authors       = ["Ichiro Ozaki"]
  spec.email         = ["Ichiro.Ozaki@gmail.com"]

  spec.summary       = %q{Libraries and commands to communicate to and control XBee.}
  spec.description   = %q{Libraries and commands to communicate to and control XBee.}
  spec.homepage      = "https://github.com/ichiroozaki/ruby-xbee"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://github.com/ichiroozaki/ruby-xbee"
  end

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
