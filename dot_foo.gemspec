# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','dot_foo','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'dot_foo'
  s.version = DotFoo::VERSION
  s.author = 'Joshua Schairbaum'
  s.email = 'joshua.schairbaum@gmail.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A command-line tool to help you keep your .dotfiles up-to-date.'
# Add your other files here if you make them
  s.files = %w(
bin/dot_foo
lib/dot_foo/version.rb
lib/dot_foo.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','dot_foo.rdoc']
  s.rdoc_options << '--title' << 'dot_foo' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'dot_foo'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('rspec')
  s.add_runtime_dependency('gli','2.4.1')
end
