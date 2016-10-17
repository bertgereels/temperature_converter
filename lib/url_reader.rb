require 'net/http'
require 'uri'

class UrlReader

  def self.url_open(url)
    temperature = Net::HTTP.get(URI.parse(url))
    return temperature
  end

end
