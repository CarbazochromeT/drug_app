# -*- encoding: utf-8 -*-
# stub: administrate_ransack 0.4.1 ruby lib

Gem::Specification.new do |s|
  s.name = "administrate_ransack".freeze
  s.version = "0.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "homepage_uri" => "https://github.com/blocknotes/administrate_ransack", "rubygems_mfa_required" => "true", "source_code_uri" => "https://github.com/blocknotes/administrate_ransack" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mattia Roccoberton".freeze]
  s.date = "2022-06-27"
  s.description = "A plugin for Administrate to use Ransack for search filters".freeze
  s.email = ["mat@blocknot.es".freeze]
  s.homepage = "https://github.com/blocknotes/administrate_ransack".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.22".freeze
  s.summary = "Administrate Ransack plugin".freeze

  s.installed_by_version = "3.2.22" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<administrate>.freeze, ["~> 0.14"])
    s.add_runtime_dependency(%q<ransack>.freeze, ["~> 2.3"])
    s.add_development_dependency(%q<appraisal>.freeze, ["~> 2.4"])
  else
    s.add_dependency(%q<administrate>.freeze, ["~> 0.14"])
    s.add_dependency(%q<ransack>.freeze, ["~> 2.3"])
    s.add_dependency(%q<appraisal>.freeze, ["~> 2.4"])
  end
end
