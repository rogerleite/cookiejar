require 'rubygems'
require 'bundler'

require 'rake'
require 'rake/clean'
require 'rake/gempackagetask'
require 'yard'
require 'yard/rake/yardoc_task'
require 'fileutils'
include FileUtils

# Default Rake task is to run all tests
task :default => :test
CLEAN << Rake::FileList['doc/**', '.yardoc']
#Yard
YARD::Rake::YardocTask.new do |t|
  t.files   = ['lib/**/*.rb']   # optional
  t.options = ['--title', 'CookieJar, a HTTP Client Cookie Parsing Library',
               '--main', 'README.markdown', '--files', 'LICENSE']
end

begin
  require 'spec/rake/spectask'

  Spec::Rake::SpecTask.new do |t|
    t.libs << 'lib'
    t.spec_files = FileList['test/**/*_test.rb']
  end
rescue LoadError
  puts "Warning: unable to load rspec tasks"
end
task :test => :spec

spec = Gem::Specification.new do |s|
  s.name = 'cookiejar'
  s.version = '0.3.0'
  s.summary = "Client-side HTTP Cookie library"
  s.description =
    %{Allows for parsing and returning cookies in Ruby HTTP client code}
  s.files = Dir['lib/**/*.rb'] + Dir['test/**/*.rb']
  s.require_path = 'lib'
  s.has_rdoc = true
#  s.extra_rdoc_files = Dir['[A-Z]*']
  s.rdoc_options << '--title' <<  'CookieJar -- Client-side HTTP Cookies'
  s.author = "David Waite"
  s.email = "david@alkaline-solutions.com"
  s.homepage = "http://alkaline-solutions.com"
end

Rake::GemPackageTask.new(spec) do |pkg|
   pkg.need_zip = true
   pkg.need_tar = true
end

desc "create a .gemspec file"
task :gemspec do
  File.open("#{spec.name}.gemspec", 'w') do |f|
    f.write spec.to_ruby
  end
end
