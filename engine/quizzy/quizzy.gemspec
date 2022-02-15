require_relative "lib/quizzy/version"

Gem::Specification.new do |spec|
  spec.name        = "quizzy"
  spec.version     = Quizzy::VERSION
  spec.authors     = ["Satish"]
  spec.email       = ["satynautiyal@gmail.com"]
  spec.homepage    = "https://github.com/satynautiyal/Quizzy.git"
  spec.summary     = "https://github.com/satynautiyal/Quizzy.git"
  spec.description = "https://github.com/satynautiyal/Quizzy.git"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://github.com/satynautiyal/Quizzy.git"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/satynautiyal/Quizzy.git"
  spec.metadata["changelog_uri"] = "https://github.com/satynautiyal/Quizzy.git"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.4", ">= 6.1.4.4"
end
