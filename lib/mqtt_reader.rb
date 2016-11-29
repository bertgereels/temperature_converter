require 'rubygems'
require 'mqtt'
require 'json'

class MqttReader

  # Reads temperature in degrees celcius from MQTT
  def self.mqtt_open(host, port, username, password)
    client = MQTT::Client.new
    client.host = host
    client.port = port
    client.username = username
    client.password = password
    client.connect()

    client.get('70B3D57ED00012B2/devices/000000007DD44BFC/up') do |topic,message|
       tuid = JSON.parse(message)['fields']['temperature']
       return tuid.to_f
    end
  end
end
