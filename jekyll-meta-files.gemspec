# frozen_string_literal: true

require_relative "lib/version"

Gem::Specification.new do |spec|
  spec.name          = "jekyll-meta-files"
  spec.version       = JekyllMetaFiles::VERSION
  spec.authors       = ["Pascal Reinhardt"]
  spec.email         = ["pasrein@gmail.com"]

  spec.summary       = "Jekyll plugin to augment static files with metadata"
  spec.homepage      = "https://github.com/irruputuncu/jekyll-meta-files"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/irruputuncu/jekyll-meta-files"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Dependencies
  spec.add_runtime_dependency 'jekyll', '~> 4.0'


  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
