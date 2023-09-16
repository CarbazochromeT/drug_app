# -*- encoding: utf-8 -*-
# stub: csb 0.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "csb".freeze
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["aki77".freeze]
  s.bindir = "exe".freeze
  s.date = "2023-05-13"
  s.description = "A simple and streaming support CSV template engine for Ruby on Rails.".freeze
  s.email = ["aki77@users.noreply.github.com".freeze]
  s.homepage = "https://github.com/aki77/csb".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.0.0".freeze)
  s.rubygems_version = "3.2.22".freeze
  s.summary = "A simple and streaming support CSV template engine for Ruby on Rails.".freeze

  s.installed_by_version = "3.2.22" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rails>.freeze, [">= 6.1.0"])
    s.add_runtime_dependency(%q<csv>.freeze, [">= 0"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 2.0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rails>.freeze, [">= 6.1.0"])
    s.add_dependency(%q<csv>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
  end
end
