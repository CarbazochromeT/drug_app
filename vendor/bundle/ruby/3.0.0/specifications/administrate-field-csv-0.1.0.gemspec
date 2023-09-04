# -*- encoding: utf-8 -*-
# stub: administrate-field-csv 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "administrate-field-csv".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://bitbucket.org/eightbitdevelopers/administrate-field-csv/src/master/CHANGELOG.md", "homepage_uri" => "https://bitbucket.org/eightbitdevelopers/administrate-field-csv", "source_code_uri" => "https://bitbucket.org/eightbitdevelopers/administrate-field-csv" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["James Stubblefield".freeze]
  s.bindir = "exe".freeze
  s.date = "2023-02-10"
  s.description = "CSV field plugin for Administrate".freeze
  s.email = ["james@eightbitstudios.com".freeze]
  s.homepage = "https://bitbucket.org/eightbitdevelopers/administrate-field-csv".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.22".freeze
  s.summary = "CSV field plugin for Administrate".freeze

  s.installed_by_version = "3.2.22" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<administrate>.freeze, ["< 1.0.0"])
    s.add_runtime_dependency(%q<rails>.freeze, [">= 4.2"])
    s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0"])
  else
    s.add_dependency(%q<administrate>.freeze, ["< 1.0.0"])
    s.add_dependency(%q<rails>.freeze, [">= 4.2"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
  end
end
