# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'car_api/version'

Gem::Specification.new do |spec|
  spec.name          = "car_api"
  spec.version       = CarApi::VERSION
  spec.authors       = ["Brian Bailey"]
  spec.email         = ["baileybrian12357@gmail.com"]

  spec.summary       = %q{Gem to wrap car info in API}
  spec.description   = %q{Gem to wrap car info in an API}
  spec.homepage      = "https://rubygems.org/profiles/BrianPython123"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"

  spec.add_dependency "faraday"
  spec.add_dependency "json"

end
