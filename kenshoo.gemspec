# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kenshoo/version'

Gem::Specification.new do |spec|
  spec.name          = "kenshoo"
  spec.version       = Kenshoo::VERSION
  spec.authors       = ["Achmad Gozali"]
  spec.email         = ["gozali@gmail.com"]
  spec.summary       = %q{Ruby wrapper for Kenshoo REST API}
  spec.description   = %q{Ruby wrapper for Kenshoo REST API}
  spec.homepage      = "http://github.com/gozali/kenshoo"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "vcr"

  spec.add_runtime_dependency "faraday"
end
