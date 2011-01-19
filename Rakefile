# Use the updated rdoc gem rather than version
# included with ruby.
require 'rdoc'

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the rdoc_rails plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the rdoc_rails plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'RDocRails'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end


begin
	require 'jeweler'
	Jeweler::Tasks.new do |gem|
		gem.name = "jakewendt-rdoc_rails"
		gem.summary = %Q{one-line summary of your gem}
		gem.description = %Q{longer description of your gem}
		gem.email = "github@jakewendt.com"
		gem.homepage = "http://github.com/jakewendt/rdoc_rails"
		gem.authors = ["Chinasaur","George 'Jake' Wendt"]
		# gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings

		gem.files  = FileList['lib/**/*']
		gem.files -= FileList['**/versions/*']

		gem.add_dependency('rails', '~> 2')
		gem.add_dependency('rdoc','~> 2')
	end
	Jeweler::GemcutterTasks.new
rescue LoadError
	puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end


