Gem::Specification.new do |s|
  s.name        = 'login'
  s.version     = '1.0.2'
  s.date        = '2020-11-22'
  s.summary     = 'Login Client SDK'
  s.description = 'SDK to interface with login service'
  s.authors     = ['Brian Freeman']
  s.email       = ''
  s.files       = ['lib/login.rb']
  s.homepage    = ''
  s.license     = ''
  s.add_runtime_dependency 'google-protobuf', '~> 3.13'
  s.add_runtime_dependency 'httparty', '~> 0.13.7'
end
