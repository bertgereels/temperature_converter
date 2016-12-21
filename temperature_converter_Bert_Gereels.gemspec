
Gem::Specification.new do |s|
  s.name        = 'temperature_converter_Bert_Gereels'
  s.version     = '1.0.4'
  s.date        = '2016-12-20'
  s.summary     = "Easy commands to convert temperatures"
  s.description = "Commanline application to convert temperature from different sources"
  s.authors     = ["Bert Gereels"]
  s.email       = 'bert.gereels@student.be'
  s.files       = Dir['lib/**/*.rb']
  s.homepage    =
    'https://github.com/bertgereels/temperature_converter'
  s.license       = 'MIT'
  s.executables << 'temp_conv'
end
