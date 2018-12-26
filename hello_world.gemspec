Gem::Specification.new do |s|
  s.name        = 'hello_world'
  s.version     = '1.0.0'
  s.date        = '2018-12-18'
  s.summary     = "Hola!"
  s.description = "A simple hello world gem"
  s.authors     = ["Amit Suryavanshi"]
  s.email       = 'amitbsuryavanshi@gmail.com'
  s.homepage    = 'http://github.com/amitbsuryavanshi/hello_world'
  s.license     = 'MIT'
  s.files       = Dir.glob("ext/**/*.{c,java,rb}") +  Dir.glob("lib/*")
  s.extensions << "ext/hello_world/extconf.rb"

  s.add_development_dependency "rake-compiler", '~> 0'
end
