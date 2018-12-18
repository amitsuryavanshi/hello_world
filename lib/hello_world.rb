require "hello_world/hello_world"
class HelloWorld
	include HelloWorldC
	def hello_world
		HelloWorldC.hello_world_c
	end
end
