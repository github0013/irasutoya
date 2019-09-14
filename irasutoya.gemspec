lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "irasutoya/version"

Gem::Specification.new do |spec|
  spec.name          = "irasutoya"
  spec.version       = Irasutoya::VERSION
  spec.authors       = ["Yuji Ueki"]
  spec.email         = ["unhappychoice@gmail.com"]

  spec.summary       = %q{CLI and library for irastoya}
  spec.description   = %q{CLI and library for irastoya}
  spec.homepage      = "https://github.com/unhappychoice/irasutoya"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/unhappychoice/irasutoya"
  spec.metadata["changelog_uri"] = "https://github.com/unhappychoice/irasutoya"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
