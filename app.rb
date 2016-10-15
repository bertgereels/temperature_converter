require './lib/temperature_converter.rb'
require 'net/http'
require 'uri'

input = ARGV.first.to_f
path = 'C:/Users/bertg/Documents/Systeemprogrammeren/Temperature_converter/data.txt'
url = 'http://labict.be/software-engineering/temperature/api/temperature/fake'

TemperatureConverter.commandline_temperature input
TemperatureConverter.file_temperature path
TemperatureConverter.url_temperature url
