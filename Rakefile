spec = Gem::Specification.load('hello_world')
require 'rake/javaextensiontask'
require 'rake/extensiontask'

if RUBY_PLATFORM =~ /java/
  Rake::JavaExtensionTask.new('hello_world', spec) do |ext|
    ext.ext_dir = 'ext/java'
  end
else
  Rake::ExtensionTask.new("hello_world", spec) do |ext|
    ext.lib_dir = "lib"
  end
end

task default: [:compile]
