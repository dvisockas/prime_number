# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prime_number/version'

Gem::Specification.new do |spec|
  spec.name          = "prime_number"
  spec.version       = PrimeNumber::VERSION
  spec.authors       = ["Danielius Visockas"]
  spec.email         = ["danieliusvisockas@gmail.com"]

  spec.summary       = %q{A gem for prime number}
  spec.description   = %q{This is intended to calculate and print first n prime numbers}
  spec.homepage      = "https://github.com/dvisockas"

  # I just didn't want to remove it. Just in case
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
