require 'rake/clean'
require 'jasmine-headless-webkit'
require 'jasmine/headless/task'
require 'js_rake_tasks'

include Rake::DSL if defined?(Rake::DSL)

CLEAN << "dist"

Jasmine::Headless::Task.new

task :minify do
  system "juicer merge -s --force dist/fill-all-the-things.js"
end

task :default => ['jasmine:headless', 'coffee:compile', 'minify']

