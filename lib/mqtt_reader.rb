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

    topic,message = client.get('70B3D57ED00012B2/devices/00000000AE6C63E4/up')
    tuid = JSON.parse(message)['fields']['temperature'].to_f
  end
end
