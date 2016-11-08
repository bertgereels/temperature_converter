require './lib/temperature_converter.rb'

input = ARGV.first.to_f
path = 'C:/Users/bertg/Documents/Systeemprogrammeren/Temperature_converter/data.txt'
url = 'http://labict.be/software-engineering/temperature/api/temperature/fake'
host = 'staging.thethingsnetwork.org'
port = 1883
username = '70B3D57ED00012B2'
password = 'c8iuTSccnypK1eoFzEb/OoqB2FVAiFg/aEaYesnNf4w='

TemperatureConverter.commandlinetemp input

TemperatureConverter.filetemp path

TemperatureConverter.urltemp url

TemperatureConverter.mqtttemp host,port,username,password
