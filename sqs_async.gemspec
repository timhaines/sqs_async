require 'rake'
Gem::Specification.new do |s|
  s.name = 'sqs_async'
  s.version = '0.0.7'
  s.summary = 'Non-Blocking SQS library.'
  s.description = 'A simple library that leverages Event Machine to issue requests to the Amazon SQS service while blocking as little as possible'
  s.authors = "Neo <contact@neo.com>", "John Andrews <john@neo.com>", "Leon Gersing <leon@neo.com>"
  s.email = "contact@neo.com"
  s.homepage = "https://github.com/neo/sqs_async"
  s.rubyforge_project = "sqs_async"

  s.add_dependency 'eventmachine', '~> 1.0.0.beta.3'
  s.add_dependency 'em-http-request', '~> 1.0.0.beta.4'
  s.add_dependency 'nokogiri'
  s.add_dependency 'json'
  s.add_dependency 'ruby-hmac'

  s.add_development_dependency 'rspec', '>= 2.6.0'
  s.add_development_dependency 'rspec-core'
  s.add_development_dependency 'rspec-expectations'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'timecop'

  s.files         = FileList.new('lib/**/*.rb')
  s.test_files    = FileList.new('spec/**/*')
  s.require_paths = [ "lib", "lib/sqs_async", "lib/sqs_async/core_ext" ]
end

