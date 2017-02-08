# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_pretty_json/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_pretty_json"
  spec.version       = RailsPrettyJson::VERSION
  spec.authors       = ["Xavier Bick"]
  spec.email         = ["fxb9500@gmail.com"]

  spec.summary       = %q{Makes Rails JSON response pretty.}
  spec.description   = %q{This short little gem adds middleware catching your JSON responses and making them pretty.}
  spec.homepage      = "https://github.com/zeiv/rails_pretty_json"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_runtime_dependency 'rails'
end
