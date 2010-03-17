desc 'Generate documentation for the rdoc_rails plugin.'
Rake::RDocTask.new(:rdoc_test) do |rdoc|
	rdoc.rdoc_dir = 'test/rdoc'
	rdoc.title    = 'RDocRails Test App'
	rdoc.options << '--line-numbers' << '--inline-source'
	rdoc.rdoc_files.include('test/app/**/*.rb')
end
