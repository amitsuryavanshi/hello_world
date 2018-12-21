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

  files         = Dir.glob("ext/**/*.{c,java,rb}") + Dir.glob("lib/**/*.rb")
  if RUBY_PLATFORM =~ /java/
    s.platform = "java"
    files << "lib/hello_world.jar"
  else
    s.extensions << "ext/hello_world/extconf.rb"
  end
  s.files = files

  s.add_development_dependency "rake-compiler", '~> 0'
end
