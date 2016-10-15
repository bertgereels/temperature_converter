class TemperatureConverter

  def self.converter(value)
    celcius = value
    fahrenheit = (value * 1.8) + 32
    kelvin = value +  273.15
    return celcius, fahrenheit, kelvin
  end

  def self.commandline_temperature(temperature)
    printer(converter(temperature))
  end

  def self.file_open(path)
    File.open(path, "r") do |f|
      f.each_line do |line|
          return line.to_f
      end
    end
  end

  def self.file_temperature(path)
    printer(converter(file_open(path)))
  end

  def self.url_open(url)
    Net::HTTP.get(URI.parse(url))
  end

  def self.url_temperature (url)
    printer(converter(url_open(url).to_f))
  end

  def self.printer(converted_values)
    to_text(converted_values[0], converted_values[1], converted_values[2])
    to_json(converted_values[0], converted_values[1], converted_values[2])
    to_html(converted_values[0], converted_values[1], converted_values[2])
  end

  def self.to_text(celcius, fahrenheit, kelvin)
    puts "Temperature:"
    puts "#{celcius} °C"
    puts "#{fahrenheit} °F"
    puts "#{kelvin} K"
  end

  def self.to_json(celcius, fahrenheit, kelvin)
    puts "----------------------------------------------------------------------"
    puts "{celcius: #{celcius}, fahrenheit: #{fahrenheit}, kelvin: #{kelvin}}"
  end

  def self.to_html(celcius, fahrenheit, kelvin)
    puts "----------------------------------------------------------------------"
    puts "<div>"
    puts "  <div>#{celcius} °C</div>"
    puts "  <div>#{fahrenheit} °F</div>"
    puts "  <div>#{kelvin} K</div>"
    puts "</div>"
    puts "___________________________________________________________________________________________________________________________"
  end

end
