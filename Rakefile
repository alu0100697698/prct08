$:.unshift File.dirname(__FILE__) + 'lib'
$:.unshift './lib', './spec'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

desc "Ejecutar las expectativas de la clase Matriz"
task :spec do
  sh "rspec -I. spec/matriz_spec.rb"
end