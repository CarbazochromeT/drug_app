# -*- encoding: utf-8 -*-
# stub: administrate-field-nested_has_many 1.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "administrate-field-nested_has_many".freeze
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nick Charlton".freeze, "Grayson Wright".freeze]
  s.date = "2020-07-02"
  s.description = "Plugin for nested has_many forms in Administrate".freeze
  s.email = ["nick@nickcharlton.net".freeze, "wright.grayson@gmail.com".freeze]
  s.homepage = "https://github.com/nickcharlton/administrate-field-nested_has_many".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.26".freeze
  s.summary = "Plugin for nested has_many forms in Administrate".freeze

  s.installed_by_version = "3.3.26" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<administrate>.freeze, ["> 0.8", "< 1"])
    s.add_runtime_dependency(%q<cocoon>.freeze, ["~> 1.2", ">= 1.2.11"])
    s.add_development_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_development_dependency(%q<capybara>.freeze, [">= 0"])
    s.add_development_dependency(%q<selenium-webdriver>.freeze, [">= 0"])
    s.add_development_dependency(%q<factory_bot>.freeze, [">= 0"])
    s.add_development_dependency(%q<i18n-tasks>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
  else
    s.add_dependency(%q<administrate>.freeze, ["> 0.8", "< 1"])
    s.add_dependency(%q<cocoon>.freeze, ["~> 1.2", ">= 1.2.11"])
    s.add_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_dependency(%q<capybara>.freeze, [">= 0"])
    s.add_dependency(%q<selenium-webdriver>.freeze, [">= 0"])
    s.add_dependency(%q<factory_bot>.freeze, [">= 0"])
    s.add_dependency(%q<i18n-tasks>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
  end
end
