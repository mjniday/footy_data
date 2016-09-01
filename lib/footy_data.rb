require_relative 'footy_data/competition'
require_relative 'footy_data/fixture'
require_relative 'footy_data/team'

module FootyData
  API_URL = "http://api.football-data.org/v1/"

  def self.api_key=(key)
    @api_key = key
  end

  def self.api_key
    @api_key
  end

  def self.request(url,options)
    request_url = FootyData::API_URL + url + "?" + options.map {|k,v| "#{k}=#{v}"}.join("&")
    headers = :headers => {"X-Auth-Token" => FootyData.api_key}
    HTTParty.get(request_url,headers).parsed_response
  end
end