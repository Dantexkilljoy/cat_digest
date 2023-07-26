require "http"
require "json"

class Cats
  def self.lookup(url)
    response = HTTP.get("https://api.thecatapi.com/v1/images/search?api_key=#{ENV.fetch("CAT_API_KEY")}")

    JSON.parse(response.to_s)
  end
end
