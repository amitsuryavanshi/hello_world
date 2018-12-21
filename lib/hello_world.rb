require 'pry'
if RUBY_PLATFORM =~ /java/
  require Dir[File.dirname(__FILE__) + '/*jar'].first
else
  require "hello_world/hello_world"
end
class HelloWorld
  include HelloWorldExtension unless RUBY_PLATFORM =~ /java/
  def hello_world
    if RUBY_PLATFORM =~ /java/
      puts Java::HelloWorldExtension.hello
    else
      puts HelloWorldExtension.hello
    end
  end
end
