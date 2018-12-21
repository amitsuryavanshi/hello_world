Exapmle of using c-extension and java-extension in same ruby gem.

- For c-extension

1. `gem build hello_world.gemspec`
2. `gem install hello_world-1.0.0.gem`

- for java-extension

1. `rake compile`
1. `gem build hello_world.gemspec`
2. `gem install hello_world-1.0.0-java.gem`


Then you can do `require 'hello_world'` in your ruby file and execute `HelloWorld.new.hello_world` which should print "Hello World from C...!" or "Hello World from JAVA...!" on console.

To run test just do,

`ruby test.rb` or

`jruby test.rb`
