class TemperatureConverter

  def commandline_temperature(temperature)
    celcius = temperature
    fahrenheit = temperature * 1.8 + 32
    kelvin = temperature + 273.15

    to_text(celcius, fahrenheit, kelvin)
    to_json(celcius, fahrenheit, kelvin)
    to_html(celcius, fahrenheit, kelvin)
  end

  def file_temperature

    File.open("C:/Users/bertg_000/Documents/Systeemprogrammeren/Temperature_converter/data.txt", "r") do |f|
      f.each_line do |line|
          line = line.to_f
          @celcius = line
          @fahrenheit = line * 1.8 + 32
          @kelvin = line + 273.15
      end
    end

    to_text(@celcius, @fahrenheit, @kelvin)
    to_json(@celcius, @fahrenheit, @kelvin)
    to_html(@celcius, @fahrenheit, @kelvin)
  end

  def url_temperature(url)
    def open(url)
      Net::HTTP.get(URI.parse(url))
    end

    page_content = open(url)
    puts page_content

    to_text(celcius, fahrenheit, kelvin)
    to_json(celcius, fahrenheit, kelvin)
    to_html(celcius, fahrenheit, kelvin)
  end

  def to_text(celcius, fahrenheit, kelvin)
    puts "Temperature:"
    puts "#{celcius} °C"
    puts "#{fahrenheit} °F"
    puts "#{kelvin} K"
  end

  def to_json(celcius, fahrenheit, kelvin)
    puts ""
    puts "{celcius: #{celcius}, fahrenheit: #{fahrenheit}, kelvin: #{kelvin}}"
  end

  def to_html(celcius, fahrenheit, kelvin)
    puts ""
    puts "<div>"
    puts "  <div>#{celcius}</div>"
    puts "  <div>#{fahrenheit}</div>"
    puts "  <div>#{kelvin}</div>"
    puts "</div>"
  end

end
