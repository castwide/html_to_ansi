
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "html_to_ansi/version"

Gem::Specification.new do |spec|
  spec.name          = "html_to_ansi"
  spec.version       = HtmlToAnsi::VERSION
  spec.authors       = ["Fred Snyder"]
  spec.email         = ["fsnyder@castwide.com"]

  spec.summary       = "HTML to ANSI conversion tool"
  spec.description   = "Generate ANSI text with escape sequences to emulate basic HTML formatting."
  spec.homepage      = "http://castwide.com"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|bin)/}) }
  end
  spec.require_paths = ["lib"]

  spec.add_dependency 'rexml', '~> 3.2'

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "simplecov", "~> 0.14"
end
