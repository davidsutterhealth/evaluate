# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'evaluate/version'

Gem::Specification.new do |spec|
  spec.name          = "evaluate"
  spec.version       = Evaluate::VERSION
  spec.authors       = ["David Mbura"]
  spec.email         = ["MburaD@sutterhealth.org"]
  spec.summary       = %q{Evaluation}
  spec.description   = %q{Evaluation and analysis of application usage.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "browser"

  spec.add_development_dependency "rails", "~> 3.1"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
 
end
