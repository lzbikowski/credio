require "bundler/gem_tasks"
require 'rake/testtask'
require 'credio'


require "rspec/core/rake_task" 
task :default => :spec

desc "Run specs"
RSpec::Core::RakeTask.new do |task|
  task.pattern = Dir['spec/*_spec.rb'].sort
end



Rake::TestTask.new do |t|
#  t.libs << "test"
  t.test_files = FileList['test/unit/*test.rb']
  t.verbose = true
end