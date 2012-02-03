# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'vertebrae/version'

Gem::Specification.new do |s|
  s.name         = "vertebrae"
  s.version      = Vertebrae::VERSION
  s.authors      = ["Polarblau", "Piotr Gęga"]
  s.email        = ["polarblau@gmail.com", "piotrgega@gmail.com"]
  s.homepage     = "https://github.com/polarblau/vertebrae"
  s.summary      = "[TODO: summary]"
  s.description  = "[TODO: description]"

  s.files        = `git ls-files app lib`.split("\n")
  s.platform     = Gem::Platform::RUBY
  s.require_path = 'lib'
  s.rubyforge_project = '[none]'

  s.add_dependency "rails", "~> 3.1"

  s.add_development_dependency "gem-release", "~> 0.1.2"
  s.add_development_dependency "minitest", "~> 2.11.1"
end
