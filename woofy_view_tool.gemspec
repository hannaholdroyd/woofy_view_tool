# frozen_string_literal: true

require_relative "lib/woofy_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "woofy_view_tool"
  spec.version       = WoofyViewTool::VERSION
  spec.authors       = ["hannaholdroyd"]
  spec.email         = ["hannah.oldroyd@trineo.co.nz"]

  spec.summary       = %q{Various view-specific methods for applications I use.}
  spec.description   = %q{Provides generated HTML data for Rails applications.}
  spec.homepage      = "https://hannaholdroyd.com"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html

end
