lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "api4over/client/version"
require "api4over/client/no_service_url_error"

Gem::Specification.new do |spec|
  spec.name          = "api4over"
  spec.version       = Api4Over::Client::VERSION
  spec.authors       = ["Hamza Azhar"]
  spec.email         = ["hamzafastian@gmail.com"]

  spec.summary       = %q{A Ruby client for 4OverAPI}
  spec.description   = %q{As North America’s leading trade printer, we at 4over pride ourselves on providing our partners with world class quality, value and customer service. We’ve developed the 4over API as an efficient and affordable way for you to provide premium quality print products to your customers, saving you time and money.}
  spec.homepage      = "https://github.com/hamza-azhar/api4over-client"
  spec.license       = "Nonstandard"

  
  spec.files = [
    "lib/api4over/client/no_service_url_error.rb",
    "lib/api4over.rb",
    "lib/api4over/print_products.rb",
    "lib/api4over/organizations.rb"
  ]

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 13.0.1"
  # spec.add_development_dependency "rspec", "~> 3.8"
  # spec.add_development_dependency "pry-byebug", "~> 3.4.0"

  spec.add_dependency 'httparty', '>=0.18', '<0.22'
end
