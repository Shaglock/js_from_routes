# -*- encoding: utf-8 -*-
# stub: given_core 3.8.2 ruby lib

Gem::Specification.new do |s|
  s.name = "given_core".freeze
  s.version = "3.8.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jim Weirich".freeze]
  s.date = "2021-01-29"
  s.description = "Given_core is the basic functionality behind rspec-given and minitest-given,\nextensions that allow the use of Given/When/Then terminology when defining\nspecifications.\n".freeze
  s.email = "jim.weirich@gmail.com".freeze
  s.homepage = "http://github.com/rspec-given/rspec-given".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--line-numbers".freeze, "--inline-source".freeze, "--main".freeze, "doc/main.rdoc".freeze, "--title".freeze, "RSpec Given Extensions".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2".freeze)
  s.rubygems_version = "3.4.20".freeze
  s.summary = "Core engine for RSpec::Given and Minitest::Given.".freeze

  s.installed_by_version = "3.4.20" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<sorcerer>.freeze, [">= 0.3.7"])
end
