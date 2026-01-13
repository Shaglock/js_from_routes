# -*- encoding: utf-8 -*-
# stub: rspec-given 3.8.2 ruby lib

Gem::Specification.new do |s|
  s.name = "rspec-given".freeze
  s.version = "3.8.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jim Weirich".freeze]
  s.date = "2021-01-29"
  s.description = "Given is an RSpec extension that allows the use of Given/When/Then\nterminology when defining specifications.\n".freeze
  s.email = "jim.weirich@gmail.com".freeze
  s.homepage = "http://github.com/rspec-given/rspec-given".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--line-numbers".freeze, "--inline-source".freeze, "--main".freeze, "doc/main.rdoc".freeze, "--title".freeze, "RSpec Given Extensions".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2".freeze)
  s.rubygems_version = "3.4.20".freeze
  s.summary = "Given/When/Then Specification Extensions for RSpec.".freeze

  s.installed_by_version = "3.4.20" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<given_core>.freeze, ["= 3.8.2"])
  s.add_runtime_dependency(%q<rspec>.freeze, [">= 2.14.0"])
end
