# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'configurable_exceptions/version'

Gem::Specification.new do |spec|
  spec.name          = "configurable_exceptions"
  spec.version       = ConfigurableExceptions::VERSION
  spec.authors       = ["Jens Balvig"]
  spec.email         = ["jens@balvig.com"]
  spec.summary       = %q{Toggle showing of error pages on/off when testing}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
