# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{seedy}
  s.version = "0.6.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Carl Hicks"]
  s.date = %q{2010-12-12}
  s.description = %q{Seed databases with a Quickness(tm).}
  s.email = %q{carl.hicks@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/seedy.rb",
    "lib/seedy/buffer.rb",
    "lib/seedy/buffer/abstract_buffer.rb",
    "lib/seedy/buffer/database_buffer.rb",
    "lib/seedy/connection.rb",
    "lib/seedy/exceptions.rb",
    "lib/seedy/generators.rb",
    "lib/seedy/generators/address.rb",
    "lib/seedy/generators/company.rb",
    "lib/seedy/generators/customer.rb",
    "lib/seedy/generators/date_time.rb",
    "lib/seedy/generators/department.rb",
    "lib/seedy/generators/description.rb",
    "lib/seedy/generators/direction.rb",
    "lib/seedy/generators/duration.rb",
    "lib/seedy/generators/email_address.rb",
    "lib/seedy/generators/guid.rb",
    "lib/seedy/generators/industry.rb",
    "lib/seedy/generators/money.rb",
    "lib/seedy/generators/name.rb",
    "lib/seedy/generators/ownership.rb",
    "lib/seedy/generators/password.rb",
    "lib/seedy/generators/phone.rb",
    "lib/seedy/generators/priority.rb",
    "lib/seedy/generators/status.rb",
    "lib/seedy/generators/subject.rb",
    "lib/seedy/generators/title.rb",
    "lib/seedy/generators/user.rb",
    "lib/seedy/generators/website.rb",
    "lib/seedy/graph.rb",
    "lib/seedy/graphs/abstract_graph.rb",
    "lib/seedy/graphs/instance_methods.rb",
    "lib/seedy/graphs/simple_graph.rb",
    "lib/seedy/graphs/user_graph.rb",
    "lib/seedy/random.rb",
    "lib/seedy/record.rb",
    "lib/seedy/records/accounts.rb",
    "lib/seedy/records/attribute_methods.rb",
    "lib/seedy/records/bugs.rb",
    "lib/seedy/records/calls.rb",
    "lib/seedy/records/cases.rb",
    "lib/seedy/records/contacts.rb",
    "lib/seedy/records/email_addresses.rb",
    "lib/seedy/records/emails.rb",
    "lib/seedy/records/leads.rb",
    "lib/seedy/records/opportunities.rb",
    "lib/seedy/records/record.rb",
    "lib/seedy/records/teams.rb",
    "lib/seedy/records/users.rb",
    "seedy.gemspec",
    "test/helper.rb",
    "test/test_generators.rb",
    "test/test_seedy.rb"
  ]
  s.homepage = %q{http://github.com/chicks/seedy}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Seed databases with a Quickness(tm).}
  s.test_files = [
    "test/helper.rb",
    "test/test_generators.rb",
    "test/test_seedy.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mysql>, [">= 0"])
      s.add_runtime_dependency(%q<guid>, [">= 0"])
      s.add_runtime_dependency(%q<faker>, [">= 0"])
      s.add_runtime_dependency(%q<i18n>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, ["> 3.0"])
      s.add_runtime_dependency(%q<mysql>, [">= 0"])
      s.add_runtime_dependency(%q<guid>, [">= 0"])
      s.add_runtime_dependency(%q<faker>, [">= 0"])
    else
      s.add_dependency(%q<mysql>, [">= 0"])
      s.add_dependency(%q<guid>, [">= 0"])
      s.add_dependency(%q<faker>, [">= 0"])
      s.add_dependency(%q<i18n>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 3.0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<activesupport>, ["> 3.0"])
      s.add_dependency(%q<mysql>, [">= 0"])
      s.add_dependency(%q<guid>, [">= 0"])
      s.add_dependency(%q<faker>, [">= 0"])
    end
  else
    s.add_dependency(%q<mysql>, [">= 0"])
    s.add_dependency(%q<guid>, [">= 0"])
    s.add_dependency(%q<faker>, [">= 0"])
    s.add_dependency(%q<i18n>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 3.0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<activesupport>, ["> 3.0"])
    s.add_dependency(%q<mysql>, [">= 0"])
    s.add_dependency(%q<guid>, [">= 0"])
    s.add_dependency(%q<faker>, [">= 0"])
  end
end

