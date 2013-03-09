# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'glimpse-git/version'

Gem::Specification.new do |gem|
  gem.name          = 'glimpse-git'
  gem.version       = Glimpse::Git::VERSION
  gem.authors       = ['Garrett Bjerkhoel']
  gem.email         = ['me@garrettbjerkhoel.com']
  gem.description   = %q{Provide a glimpse into the Git info of your Rails application.}
  gem.summary       = %q{Provide a glimpse into the Git info of your Rails application.}
  gem.homepage      = 'https://github.com/dewski/glimpse-git'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end
