require './lib/commandline_reader.rb'
require './lib/file_reader.rb'
require './lib/url_reader.rb'
require './lib/Converter.rb'
require './lib/text_printer.rb'
require './lib/html_printer.rb'
require './lib/json_printer.rb'

class TemperatureConverter

  def self.commandlinetemp(input)
    temperature = CommandlineReader.reader(input)
    puts "Temperatuur uit commandline:"
    bundelMethode(temperature)
  end

  def self.filetemp(path)
    temperature = FileReader.file_open(path)
    puts "Temperatuur uit file:"
    bundelMethode(temperature)
  end

  def self.urltemp(url)
    temperature = UrlReader.url_open(url).to_f
    puts "Temperatuur uit url:"
    bundelMethode(temperature)
  end

  def self.bundelMethode(temperature)
    celc = Converter.to_celcius(temperature)
    fahr = Converter.to_fahrenheit(temperature)
    kelv = Converter.to_kelvin(temperature)
    TextPrinter.printer(celc, fahr, kelv)
    JsonPrinter.printer(celc, fahr, kelv)
    HtmlPrinter.printer(celc, fahr, kelv)
    puts "______________________________________________________________________"
  end

end
