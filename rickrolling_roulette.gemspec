# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rickrolling_roulette/version'

Gem::Specification.new do |spec|
  spec.name          = "rickrolling_roulette"
  spec.version       = RickrollingRoulette::VERSION
  spec.authors       = ["Eadon"]
  spec.email         = ["eadonj@gmail.com"]
  spec.description   = %q{Rickroll Roulette will bring a new dimension of UI/UX enjoyment to your site.}
  spec.summary       = %q{Rickroll Roulette will bring a new dimension of UI/UX enjoyment to your site.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
