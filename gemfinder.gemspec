# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gemfinder/version'

Gem::Specification.new do |spec|
  spec.name          = "gemfinder"
  spec.version       = Gemfinder::VERSION
  spec.authors       = ["Chelsea"]
  spec.email         = ["chelsea.dommert@gmail.com"]
  spec.summary       = %q{Learn about active gems right from your terminal}
  spec.description   = %q{Learn about active gems right from your terminal, check if your desired gem name is taken, or look for extensions and helpers for a gem.}
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
