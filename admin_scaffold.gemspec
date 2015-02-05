$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "admin_scaffold/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "adminscaffold"
  s.version     = AdminScaffold::VERSION
  s.authors     = ["Jian Weihang"]
  s.email       = ["tonytonyjan@gmail.com"]
  s.homepage    = "https://github.com/tonytonyjan/admin_scaffold"
  s.summary     = "admin scaffold"
  s.description = "admin scaffold"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"

  s.add_development_dependency "pg"
end
