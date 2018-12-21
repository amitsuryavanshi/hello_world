spec = Gem::Specification.load('hello_world')

if RUBY_PLATFORM =~ /java/
  require 'jars/classpath'
  require 'rake/javaextensiontask'
  Rake::JavaExtensionTask.new('hello_world', spec) do |ext|
    ext.ext_dir = 'ext'
  end
else
  require 'rake/extensiontask'
  Rake::ExtensionTask.new("hello_world", spec) do |ext|
    ext.lib_dir = "lib/hello_world"
  end
end

task default: [:compile]
