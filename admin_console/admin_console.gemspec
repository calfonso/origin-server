$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "admin_console/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "admin_console"
  s.version     = AdminConsole::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of AdminConsole."
  s.description = "TODO: Description of AdminConsole."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.8"
  # s.add_dependency "jquery-rails"
  s.add_dependency 'formtastic',          '~> 1.2.4'
  s.add_dependency 'haml',                '~> 3.1.7'
end
