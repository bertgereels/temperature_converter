class HtmlPrinter

  # Prints the three formats of temperature in HTML
  def self.printer(celcius, fahrenheit, kelvin)
    puts "<div>"
    puts "  <div>#{celcius} °C</div>"
    puts "  <div>#{fahrenheit} °F</div>"
    puts "  <div>#{kelvin} K</div>"
    puts "</div>"
  end

end
