# frozen_string_literal: true

require_relative "lib/searchdata_sdk/version"

Gem::Specification.new do |spec|
  spec.name          = "searchdata_sdk"
  spec.version       = SearchdataSdk::VERSION
  spec.authors       = ["Raluca Penciuc"]
  spec.email         = ["penciuc.raluca@yahoo.com"]

  spec.summary       = "Ruby SDK for SearchData API."
  spec.description   = "SearchData is a REST API that collects any kind of data from search engines and transforms it" \
                       " into a complete data toolkit for every team in your company. This SDK for Ruby makes the" \
                       " usage of the API easier to implement in any project you have."
  spec.homepage      = "https://github.com/SearchDataAPI/searchdata_sdk"
  spec.required_ruby_version = ">= 3.0.0"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/SearchDataAPI/searchdata_sdk"
  spec.metadata["changelog_uri"] = "https://github.com/SearchDataAPI/searchdata_sdk/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "dotenv", "~> 2.7.6"
  spec.add_dependency "json", "~> 2.5.1"
  spec.add_dependency "open-uri", "~> 0.1.0"
  spec.add_development_dependency "rspec", "~> 3.2"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
