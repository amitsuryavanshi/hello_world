Gem::Specification.new do |s|
  s.name        = 'hello_world'
  s.version     = '0.0.0'
  s.date        = '2018-12-18'
  s.summary     = "Hola!"
  s.description = "A simple hello world gem"
  s.authors     = ["Amit Suryavanshi"]
  s.email       = 'amitbsuryavanshi@gmail.com'
  s.files       = `git ls-files lib ext init.rb hello_world.gemspec`.split($INPUT_RECORD_SEPARATOR)
  s.homepage    =
    'http://github.com/amitbsuryavanshi/hello_world'
  s.license       = 'MIT'
  s.extensions = %w[ext/hello_world/extconf.rb]
end