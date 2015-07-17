# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'seo_rails_helpers/version'

Gem::Specification.new do |spec|
  spec.name          = 'seo_rails_helpers'
  spec.version       = SeoRailsHelpers::VERSION
  spec.authors       = ['Dmitriy Tarasov']
  spec.email         = ['info@rubysamurai.com']

  spec.summary       = 'Rails view helpers for search engine optimization (SEO)'
  spec.description   = 'Rails view helpers for search engine optimization (SEO)'
  spec.homepage      = 'https://github.com/rubysamurai/seo_rails_helpers'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_development_dependency 'rspec-rails', '~> 3.3'
end
