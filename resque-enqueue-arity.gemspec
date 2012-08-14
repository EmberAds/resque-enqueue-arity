# -*- encoding: utf-8 -*-
require File.expand_path('../lib/resque-enqueue-arity/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Caius Durling"]
  gem.email         = ["caius@emberads.com"]
  gem.description   = %{Validates the number of job arguments when queueing a job with Resque}
  gem.summary       = %{Validates the number of job arguments when queueing a job with Resque}
  gem.homepage      = "https://github.com/EmberAds/resque-enqueue-arity"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "resque-enqueue-arity"
  gem.require_paths = ["lib"]
  gem.version       = Resque::Enqueue::Arity::VERSION
end
