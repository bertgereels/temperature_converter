require './lib/temperature_converter.rb'

input = ARGV.first.to_f
path = 'C:/Users/bertg/Documents/Systeemprogrammeren/Temperature_converter/data.txt'
url = 'http://labict.be/software-engineering/temperature/api/temperature/fake'

TemperatureConverter.commandlinetemp input

TemperatureConverter.filetemp path

TemperatureConverter.urltemp url
