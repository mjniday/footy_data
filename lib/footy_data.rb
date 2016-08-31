require_relative 'footy_data/competition'
require_relative 'footy_data/fixture'
require_relative 'footy_data/team'

module FootyData
  API_URL = "http://api.football-data.org/v1/"

  def self.request(url,options)
    request_url = FootyData::API_URL + url + "?" + options.map {|k,v| "#{k}=#{v}"}.join("&")
    HTTParty.get(request_url).parsed_response
  end
end