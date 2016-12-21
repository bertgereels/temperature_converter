require 'commandline_reader'
require 'file_reader'
require 'url_reader'
require 'Converter'
require 'text_printer'
require 'mqtt_reader'
require 'html_printer'
require 'json_printer'

class TemperatureConverter

  def self.commandlinetemp(input, printer_type)
    temperature = CommandlineReader.reader(input)
    puts "Temperatuur uit commandline:"
    keuzePrinter(printer_type, temperature)
  end

  def self.filetemp(path,printer_type)
    temperature = FileReader.file_open(path)
    puts "Temperatuur uit file:"
    keuzePrinter(printer_type, temperature)
  end

  def self.urltemp(url, printer_type)
    temperature = UrlReader.url_open(url).to_f
    puts "Temperatuur uit url:"
    keuzePrinter(printer_type, temperature)
  end

  def self.mqtttemp(host, port, username, password, printer_type)
    temperature = MqttReader.mqtt_open(host, port, username, password)
    puts "Temperatuur uit MQTT:"
    keuzePrinter(printer_type, temperature)
  end

  # Converting and outputting in correct way
  def self.keuzePrinter(printer_type, temperature)
    celc = Converter.to_celcius(temperature)
    fahr = Converter.to_fahrenheit(temperature)
    kelv = Converter.to_kelvin(temperature)
    case printer_type
      when "text"
        TextPrinter.printer(celc, fahr, kelv)
      when "json"
        JsonPrinter.printer(celc, fahr, kelv)
      when "html"
        HtmlPrinter.printer(celc, fahr, kelv)
      else
        puts "What the hell is #{printer_type}"
      end
  end
end
