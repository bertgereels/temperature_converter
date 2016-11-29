class JsonPrinter

  # Prints the three formats of temperature in a JSON string
  def self.printer(celcius, fahrenheit, kelvin)
    puts "{celcius: #{celcius}, fahrenheit: #{fahrenheit}, kelvin: #{kelvin}}"
  end

end
