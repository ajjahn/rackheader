# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rack/header/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Adam Jahn"]
  gem.email         = ["ajjahn@gmail.com"]
  gem.description   = %q{Rack Middleware for overriding and adding additional HTTP response headers}
  gem.summary       = %q{Rack Middleware for overriding and adding additional HTTP response headers}
  gem.homepage      = "https://github.com/ahn/rackheader"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rackheader"
  gem.require_paths = ["lib"]
  gem.version       = Rack::Header::VERSION
  
  gem.add_development_dependency 'rake'
  gem.add_dependency 'rack', '>= 1.4.1'
end
