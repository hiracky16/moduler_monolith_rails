$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "users/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "users"
  s.version     = Users::VERSION
  s.authors     = ["hiracky16"]
  s.email       = ["h.piiice16@gmail.com"]
  s.homepage    = "http://example.com"
  s.summary     = "users management"
  s.description = "userrs management"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "Rakefile", "README.md"]

  s.add_dependency 'rails'
  s.add_dependency 'draper'

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'factory_bot'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'pry-byebug'
  s.add_development_dependency 'sqlite3'
end
