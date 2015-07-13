# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aws/opsworks_cssh/version'

Gem::Specification.new do |spec|
  spec.name          = "aws-opsworks_cssh"
  spec.version       = Aws::OpsworksCssh::VERSION
  spec.authors       = ["Adnan H"]
  spec.email         = ["adnan.husain+aws_gem@metoda.com"]
  spec.summary       = "CSSH into OpsWorks instances"
  spec.description   = "CSSH into all OpsWorks instances specified by a stack name"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "aws-sdk", "~> 2.1"
end
