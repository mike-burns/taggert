# -*- encoding: utf-8 -*-
require File.expand_path('../lib/taggert/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mike Burns"]
  gem.email         = ["mike@mike-burns.com"]
  gem.description   = <<-DESCRIPTION
    Tag files per directory. This allows you to hide the tags within a
  specific directory.
  DESCRIPTION
  gem.summary       = %q{Tag files per directory}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "taggert"
  gem.require_paths = ["lib"]
  gem.bindir        = "bin"
  gem.version       = Taggert::VERSION

  gem.add_dependency "sqlite3"
end
