
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "bishop"
  spec.version       = 0.1
  spec.authors       = ["Gerardo Lopez Duenas"]
  spec.email         = ["gerardolopezduenas@gmail.com"]

  spec.summary       = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "minitest-spec-context"
  spec.add_development_dependency "minitest-reporters", "~> 1.1", ">= 1.1.11"
  spec.add_development_dependency "color_pound_spec_reporter"
end
