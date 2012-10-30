# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'viralica_basics/version'

Gem::Specification.new do |gem|
  gem.name          = "viralica_basics"
  gem.version       = ViralicaBasics::VERSION
  gem.authors       = ["Esteban Pastorino", "Ignacio Gutierrez"]
  gem.email         = ["tech@virali.ca"]
  gem.summary       = %q{Viralica Basic Styles}
  gem.description   = %q{Viralica Basic Styles}
  gem.homepage      = "http://virali.ca"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency(%q<sass>, ["~> 3.2.0"])
  gem.add_dependency(%q<compass>, ["~> 0.12.2"])
  gem.add_dependency(%q<susy>, ["~> 1.0.3"])
end
