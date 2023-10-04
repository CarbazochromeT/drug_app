# -*- encoding: utf-8 -*-
# stub: administrate-field-enumerize 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "administrate-field-enumerize".freeze
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mikazuki Fuyuno".freeze]
  s.bindir = "exe".freeze
  s.date = "2017-07-21"
  s.description = "Plugin for adding Enumerize gem support in Administrate.".freeze
  s.email = ["mikazuki_fuyuno@outlook.com".freeze]
  s.homepage = "https://github.com/mika-f/administrate-field-enumerize".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.26".freeze
  s.summary = "Plugin for adding Enumerize gem support in Administrate.".freeze

  s.installed_by_version = "3.3.26" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<administrate>.freeze, ["~> 0.8"])
    s.add_runtime_dependency(%q<enumerize>.freeze, ["~> 2.1"])
    s.add_runtime_dependency(%q<rails>.freeze, [">= 5.0.0"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.15"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
  else
    s.add_dependency(%q<administrate>.freeze, ["~> 0.8"])
    s.add_dependency(%q<enumerize>.freeze, ["~> 2.1"])
    s.add_dependency(%q<rails>.freeze, [">= 5.0.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.15"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
  end
end
