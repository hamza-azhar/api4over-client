# Gem::Specification.new do |s|
#   s.name = %q{4over_api}
#   s.version = "0.0.0"
#   s.date = %q{2020-06-02}
#   s.summary = %q{As North America’s leading trade printer, we at 4over pride ourselves on providing our partners with world class quality, value and customer service. We’ve developed the 4over API as an efficient and affordable way for you to provide premium quality print products to your customers, saving you time and money.}
#   s.files = [
#     "lib/4over_api.rb"
#   ]
#   s.require_paths = ["lib"]
# end


lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "api4over/client/version"

Gem::Specification.new do |spec|
  spec.name          = "api4over-client"
  spec.version       = Api4over::Client::VERSION
  spec.authors       = ["Hamza Azhar"]
  spec.email         = ["hamzafastian@gmail.com"]

  spec.summary       = %q{A Ruby client for 4OverAPI}
  spec.description   = %q{A Ruby client for 4OverAPI}
  # spec.homepage      = "https://github.com/promohunt/promostandards-client"
  # spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
  #   `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 13.0.1"
  spec.add_development_dependency "rspec", "~> 3.8"
  spec.add_development_dependency "pry-byebug", "~> 3.4.0"
  spec.add_development_dependency "parallel", "~>1.12.1"
  spec.add_development_dependency "colorize", "~>0.8.1"

  spec.add_dependency 'savon', '~> 2.12.0'
  spec.add_dependency 'httparty'
end
