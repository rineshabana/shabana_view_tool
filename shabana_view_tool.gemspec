# frozen_string_literal: true

require_relative "lib/shabana_view_tool/version"

Gem::Specification.new do |spec|
  spec.name = "shabana_view_tool"
  spec.version = ShabanaViewTool::VERSION
  spec.authors = ["Shabana Noor"]
  spec.email = ["rineshabana95@gmail.com"]

  spec.summary = %q{Various view specific methods for application I use.}
  spec.description = %q{Provides generated HTML data for Rails application.}
  spec.homepage = "https://github.com/rineshabana/shabana_view_tool"
  spec.license = "MIT"
  
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
