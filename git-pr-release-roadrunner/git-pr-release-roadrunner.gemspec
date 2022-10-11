# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "git-pr-release-roadrunner"
  spec.version       = '2.2.0'
  spec.authors       = ["trashypete"]
  spec.email         = ["n/a"]
  spec.summary       = 'Creates a release pull request'
  spec.description   = 'git-pr-release creates a pull request which summarizes feature branches that are to be released into production'
  spec.homepage      = ''

  spec.files         = `git ls-files`.split($/)
  spec.bindir        = "exe"
  spec.executables   = "git-pr-release-roadrunner"
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'octokit', '>= 4.23.0'
  spec.add_dependency 'highline'
  spec.add_dependency 'colorize'
  spec.add_dependency 'diff-lcs'

  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'timecop'
  spec.add_development_dependency 'webmock'

  spec.license = 'MIT'
end
