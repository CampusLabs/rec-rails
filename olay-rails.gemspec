# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rec/rails/version'

Gem::Specification.new do |gem|
  gem.name          = 'rec-rails'
  gem.version       = Rec::Rails::VERSION
  gem.summary       = "Recommendations as you type."
  gem.description   = "Places Rec #{Rec::VERSION} in the Rails asset pipeline."
  gem.homepage      = 'https://github.com/orgsync/rec-rails'

  gem.authors       = ['Casey Foster']
  gem.email         = ['c@sey.me']

  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'rails', '>= 3.1'
end
