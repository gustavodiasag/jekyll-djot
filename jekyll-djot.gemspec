# frozen_string_literal: true

require_relative "lib/jekyll-djot/version"

Gem::Specification.new do |spec|
  spec.name = "jekyll-djot"
  spec.version = Jekyll::Djot::VERSION
  spec.authors = ["Gustavo Aguiar"]
  spec.homepage = "https://github.com/gustavodiasag/jekyll-djot"
  spec.license = "MIT"

  spec.summary = "Djot generator for Jekyll"

  spec.required_ruby_version = ">= 3.4"
  spec.required_rubygems_version = ">= 3.7"

  spec.files = ["README.md"]
  spec.files += Dir.glob("lib/**/*.rb")
  spec.require_paths = ["lib"]

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }

  spec.add_runtime_dependency("djotter", "~> 0.1.0")

  spec.add_development_dependency("jekyll", ">= 3.7", "< 5.0")
  spec.add_development_dependency("rake", "~> 13.0")
  spec.add_development_dependency("rspec", "~> 3.0")
end
