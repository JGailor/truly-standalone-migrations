# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'truly_standalone_migrations/version'

Gem::Specification.new do |spec|
  spec.name          = "truly_standalone_migrations"
  spec.version       = TrulyStandaloneMigrations::VERSION
  spec.authors       = ["Jeremy Gailor"]
  spec.email         = ["jgailor@gmail.com"]

  spec.summary       = %q{Heavily based on the Standalone Migrations gem, Truly Standalone Migrations is getting away from relying on Rails norms and requires slightly more hand-configuration}
  spec.description   = %q{I really wanted a version of the Standalone Migrations gem to use ActiveRecord migrations, which are great, but without being bound by RAILS_ENV, having to specify environments in your config file, etc.  Instead I wanted a highly-but-easily configurable gem that would do much the same thing.}
  spec.homepage      = "https://github.com/JGailor/truly-standalone-migrations"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", "~> 5.1.1"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
