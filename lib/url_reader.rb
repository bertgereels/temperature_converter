require 'net/http'
require 'uri'

class UrlReader

  # Reads temperature in degrees celcius from a url
  def self.url_open(url)
    temperature = Net::HTTP.get(URI.parse(url))
    return temperature
  end

end
