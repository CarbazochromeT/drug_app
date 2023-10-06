# -*- encoding: utf-8 -*-
# stub: rmagick 5.3.0 ruby lib ext
# stub: ext/RMagick/extconf.rb

Gem::Specification.new do |s|
  s.name = "rmagick".freeze
  s.version = "5.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze, "ext".freeze]
  s.authors = ["Tim Hunter".freeze, "Omer Bar-or".freeze, "Benjamin Thomas".freeze, "Moncef Maiza".freeze]
  s.date = "2023-07-19"
  s.description = "RMagick is an interface between Ruby and ImageMagick.".freeze
  s.email = "github@benjaminfleischer.com".freeze
  s.extensions = ["ext/RMagick/extconf.rb".freeze]
  s.files = ["ext/RMagick/extconf.rb".freeze]
  s.homepage = "https://github.com/rmagick/rmagick".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0".freeze)
  s.requirements = ["ImageMagick 6.7.7 or later".freeze]
  s.rubygems_version = "3.4.20".freeze
  s.summary = "Ruby binding to ImageMagick".freeze

  s.installed_by_version = "3.4.20" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<pkg-config>.freeze, ["~> 1.4"])
  s.add_development_dependency(%q<pry>.freeze, ["~> 0.14"])
  s.add_development_dependency(%q<rake-compiler>.freeze, ["~> 1.0"])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.8"])
  s.add_development_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.4.1"])
  s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.81.0"])
  s.add_development_dependency(%q<rubocop-rspec>.freeze, ["~> 1.38.1"])
  s.add_development_dependency(%q<rubocop-performance>.freeze, ["~> 1.5.2"])
  s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.16.1"])
  s.add_development_dependency(%q<yard>.freeze, ["~> 0.9.24"])
end
