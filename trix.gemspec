# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'trix/version'

Gem::Specification.new do |spec|
  spec.name          = 'trix'
  spec.version       = Trix::VERSION
  spec.authors       = 'Basecamp'
  spec.email         = 'email@basecamp.com'

  spec.summary       = 'A rich text editor for everyday writing'
  spec.description   = 'A rich text editor for everyday writing'
  spec.homepage      = 'https://github.com/basecamp/trix'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rails'

  spec.add_development_dependency 'appraisal'
  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'rspec-activemodel-mocks'
  spec.add_development_dependency 'rubocop'
end
