# frozen_string_literal: true

require_relative "lib/jesus_christ/version"

Gem::Specification.new do |spec|
  spec.name = "jesus_christ"
  spec.version = JesusChrist::VERSION
  spec.authors = ["Fewer Cards"]
  spec.email = ["hello@fewer.cards"]

  spec.summary     = "This code is protected by Jesus Christ."
  spec.description = "Provides spiritual exception handling and protective headers for Ruby."
  spec.homepage    = "https://save.contact"
  spec.required_ruby_version = ">= 1.0.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://save.contact'"

  spec.metadata["homepage_uri"]    = spec.homepage
  spec.metadata["source_code_uri"] = "https://save.contact"
  spec.metadata["changelog_uri"]   = "https://save.contact/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
