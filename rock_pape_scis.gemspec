# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rock_pape_scis/version'

Gem::Specification.new do |spec|
  spec.name          = "rock_pape_scis"
  spec.version       = RockPapeScis::VERSION
  spec.authors       = ["Kim Pham"]
  spec.email         = ["ms.kimpham@gmail.com"]
  spec.summary       = %q{Rock Paper Scissors}
  spec.description   = %q{Gem for hand game where two players simutaneously pick one of three options: rock, paper, or scissors}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1.0"
end
