# -*- encoding: utf-8 -*-
# stub: slug 4.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "slug".freeze
  s.version = "4.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ben Koski".freeze]
  s.date = "2018-11-17"
  s.description = "Simple, straightforward slugs for your ActiveRecord models.".freeze
  s.email = "ben.koski@gmail.com".freeze
  s.extra_rdoc_files = ["LICENSE".freeze, "README.md".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "http://github.com/bkoski/slug".freeze
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Simple, straightforward slugs for your ActiveRecord models.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<activerecord>.freeze, ["> 3.0.0"])
      s.add_runtime_dependency(%q<activesupport>.freeze, ["> 3.0.0"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<activerecord>.freeze, ["> 3.0.0"])
      s.add_dependency(%q<activesupport>.freeze, ["> 3.0.0"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<activerecord>.freeze, ["> 3.0.0"])
    s.add_dependency(%q<activesupport>.freeze, ["> 3.0.0"])
  end
end
