lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'incremental_factory_names/version'

Gem::Specification.new do |s|
  s.name        = 'incremental_factory_names'
  s.version     = IncrementalFactoryNames::VERSION
  s.summary     = 'Incremental Factory Names'
  s.description = ''
  s.authors     = ['Ihor Voloshyn']
  s.email       = 'snick2510@gmail.com'
  s.files       = Dir['lib/incremental_factory_names.rb', 'lib/incremental_factory_names/*.rb', 'spec/*.rb']
  s.extra_rdoc_files = %w[README.md]
  s.homepage    = 'https://github.com/Snick555/incremental_factory_names'
  s.license     = 'MIT'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'factory_bot'
  s.add_development_dependency 'rake'
end
