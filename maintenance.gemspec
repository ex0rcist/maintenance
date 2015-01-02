$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "maintenance/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name = "maintenance"
  s.version = Maintenance::VERSION
  s.authors = ["Eugene Shuvalov"]
  s.email = ["evshuvalov@yandex.ru"]
  s.homepage = ""
  s.summary = ""
  s.description = ""
  s.license = "MIT"

  s.files = Dir["{app,config,db,lib,rack}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.4"

  s.add_development_dependency "sqlite3"
end
