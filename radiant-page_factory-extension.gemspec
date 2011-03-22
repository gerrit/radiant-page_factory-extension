# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  version = File.read(File.join(File.dirname(__FILE__), 'VERSION'))
  s.name        = 'radiant-page_factory-extension'
  s.version     = version
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Josh French"]
  s.email       = 'josh@vitamin-j.com'
  s.homepage    = 'http://github.com/joshfrench/radiant-page_factory-extension'
  s.summary     = %Q{Page Factory Extension for Radiant CMS}
  s.description = %Q{Page Factory is a small DSL for intelligently defining content types in Radiant CMS.}
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.post_install_message = %{
  Add this to your radiant project with:
    config.gem 'radiant-page_factory-extension', :version => '#{version}'
  }
end
