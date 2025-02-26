# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'zapier_rest_hooks/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'zapier_rest_hooks'
  s.version     = ZapierRestHooks::VERSION
  s.authors     = ['Esteban Arango Medina']
  s.email       = ['marranoparael31@gmail.com']
  s.homepage    = 'https://github.com/esbanarango/zapier-REST-hooks'
  s.summary     = 'Summary of ZapierRestHooks.'
  s.description = 'Integration of Zapier REST hooks pattern within a Ruby on Rails app.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'rails', '>= 5.1.0', '< 8.1.0'
  s.add_dependency 'rest-client'

  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'codeclimate-test-reporter'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_bot_rails'
  s.add_development_dependency 'fakeweb-fi'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'rubocop-rails'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'sqlite3'
end
