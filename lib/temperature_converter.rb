require './lib/commandline_reader.rb'
require './lib/file_reader.rb'
require './lib/url_reader.rb'
require './lib/Converter.rb'
require './lib/text_printer.rb'
require './lib/mqtt_reader.rb'
require './lib/html_printer.rb'
require './lib/json_printer.rb'

class TemperatureConverter

  def self.commandlinetemp(input, printer_type)
    temperature = CommandlineReader.reader(input)
    puts "Temperatuur uit commandline:"
    #bundelMethode(temperature)
    keuzePrinter(printer_type, temperature)
  end

  def self.filetemp(path,printer_type)
    temperature = FileReader.file_open(path)
    puts "Temperatuur uit file:"
    #bundelMethode(temperature)
    keuzePrinter(printer_type, temperature)
  end

  def self.urltemp(url, printer_type)
    temperature = UrlReader.url_open(url).to_f
    puts "Temperatuur uit url:"
    #bundelMethode(temperature)
    keuzePrinter(printer_type, temperature)
  end

  def self.mqtttemp(host, port, username, password, printer_type)
    temperature = MqttReader.mqtt_open(host, port, username, password)
    puts "Temperatuur uit MQTT:"
    #bundelMethode(temperature)
    keuzePrinter(printer_type, temperature)
  end

  # def self.bundelMethode(temperature)
  #   celc = Converter.to_celcius(temperature)
  #   fahr = Converter.to_fahrenheit(temperature)
  #   kelv = Converter.to_kelvin(temperature)
  #   TextPrinter.printer(celc, fahr, kelv)
  #   JsonPrinter.printer(celc, fahr, kelv)
  #   HtmlPrinter.printer(celc, fahr, kelv)
  #   puts "______________________________________________________________________"
  # end

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
        "What the hell is #{printer_type}"
      end
    end
end
