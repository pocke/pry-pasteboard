require_relative 'lib/pry/clipboard/version'

Gem::Specification.new do |spec|
  spec.name          = "pry-clipboard"
  spec.version       = Pry::Clipboard::VERSION
  spec.authors       = ["yuemori"]
  spec.email         = ["moonoverwalker@gmail.com"]

  spec.summary       = %q{Copy result to clipboard for Pry}
  spec.description   = %q{Copy result to clipboard for Pry}
  spec.homepage      = "https://github.com/yuemori/pry-clipboard"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/yuemori/pry-clipboard"
  spec.metadata["changelog_uri"] = "https://github.com/yuemori/pry-clipboard/blob/master/CHANGELOG.md"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
