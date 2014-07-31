# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gemfinder/version'

Gem::Specification.new do |spec|
  spec.name          = "gemfinder"
  spec.version       = Gemfinder::VERSION
  spec.authors       = ["Chelsea"]
  spec.email         = ["chelsea.dommert@gmail.com"]
  spec.summary       = %q{If you want to know whether there is a gem available to do what you want to do, just type a few search queries into the terminal. This gem will return the names and descriptions of gems that might provide what you want.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_dependency "gems"
end
