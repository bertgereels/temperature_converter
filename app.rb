require './lib/temperature_converter.rb'
require 'net/http'
require 'uri'

input = ARGV.first.to_f

temperature_converter = TemperatureConverter.new

puts temperature_converter.commandline_temperature input
puts temperature_converter.file_temperature 'C:/Users/bertg_000/Documents/Systeemprogrammeren/Temperature_converter/data.txt'
puts temperature_converter.url_temperature 'http://labict.be/software-engineering/temperature/api/temperature/fake'
