lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "currency_utils/version"

Gem::Specification.new do |spec|
  spec.name          = "currency_utils"
  spec.version       = "1.0.0"
  spec.authors       = ["hiracky16"]
  spec.email         = ["h.piiice16@gmail.com"]

  spec.summary       = %q{ currency process module }
  spec.description   = %q{ currency process module }
  spec.homepage      = 'http://example.com'

  spec.add_dependency 'activemodel'

  # Development
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'factory_bot'
end
