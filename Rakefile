require 'rake/clean'
require 'rubygems'
require 'rubygems/package_task'
require 'rdoc/task'
Rake::RDocTask.new do |rd|
  rd.main = "README.rdoc"
  rd.rdoc_files.include("README.rdoc","lib/**/*.rb","bin/**/*")
  rd.title = 'Your application title'
end

spec = eval(File.read('dot_foo.gemspec'))

Gem::PackageTask.new(spec) do |pkg|
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

task :default => :spec
