require './lib/text_printer.rb'
require './lib/html_printer.rb'
require './lib/json_printer.rb'

require './lib/commandline_reader.rb'
require './lib/file_reader.rb'
require './lib/url_reader.rb'

class TextPrinter

  def self.printer(celcius, fahrenheit, kelvin)
    puts "#{celcius} °C"
    puts "#{fahrenheit} °F"
    puts "#{kelvin} K"
  end

end
