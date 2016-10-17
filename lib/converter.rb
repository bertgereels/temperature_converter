
class Converter

  attr_accessor :temperature

  KELVIN_OFFSET = 273.015
  FAHRENHEIT_OFFSET = 32
  FAHRENHEIT_RATIO = Rational(9,5)

  def initialize temperature
    @temperature = temperature
  end

  def self.to_celcius(temperature)
    temperature
  end

  def self.to_fahrenheit(temperature)
    (to_celcius(temperature) * FAHRENHEIT_RATIO) + FAHRENHEIT_OFFSET
  end

  def self.to_kelvin(temperature)
    to_celcius(temperature) + KELVIN_OFFSET
  end
end
