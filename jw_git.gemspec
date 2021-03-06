require_relative 'lib/jw_git/version'

Gem::Specification.new do |spec|
  spec.name          = "jw_git"
  spec.version       = JwGit::VERSION
  spec.authors       = ["Jelani Woods"]
  spec.email         = ["jelani@firstdraft.com"]

  spec.summary       = %q{ Write a short summary, because RubyGems requires one.}
  spec.description   = %q{ Write a longer description or delete this line.}
  spec.homepage      = "https://jelaniwoods.github.io"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/jelaniwoods-FurtherLearning/jw-baby-git"
  spec.metadata["changelog_uri"] = "https://github.com/jelaniwoods-FurtherLearning/jw-baby-git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.add_runtime_dependency 'sinatra', '~> 2.0.8.1'
  spec.add_runtime_dependency 'git', '~> 1.6.0'
  spec.add_runtime_dependency 'actionview'
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
