Exapmle of using c-extension in ruby gem.

1. `gem build hello_world.gemspec`
2. `gem install hello_world-0.0.0.gem`

Then you can do `require 'hello_world'` in your ruby file and execute `HelloWorld.new.hello_world` which should print "Hello World" on console.
