lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "null_statsd/version"

Gem::Specification.new do |spec|
  spec.name = "null_statsd"
  spec.version = NullStatsd::VERSION
  spec.authors = ["Imad Mouaddine", "Perry Lee", "Bob Ziuchkovski", "Andrew Selder", "Chris DiMartino", "Justin Aiken", "Eric Mueller"]
  spec.email = ["nevinera@gmail.com"]
  spec.summary = "Implements null-object pattern for Statsd client"
  spec.description = "Implements null-object pattern for Statsd client"
  spec.homepage = "https://github.com/nevinera/null_statsd"
  spec.license = "MIT"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`
      .split("\x0")
      .reject { |f| f.start_with?("spec") }
  end

  spec.bindir = "bin"
  spec.executables = []
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "rake", "~> 13.1"
  spec.add_development_dependency "rspec", "~> 3.12"
  spec.add_development_dependency "rspec-cover_it", "~> 0.1.0"
  spec.add_development_dependency "pry", "~> 0.14"
  spec.add_development_dependency "standard", "~> 1.32"
  spec.add_development_dependency "rubocop", "~> 1.57"
  spec.add_development_dependency "quiet_quality", "~> 1.5"
  spec.add_development_dependency "mdl", "~> 0.13"
end
