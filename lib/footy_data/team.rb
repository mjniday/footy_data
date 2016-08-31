require 'HTTParty'

module FootyData
  class Team

    def self.find(teamId,opts={})
      FootyData.request("/teams/#{teamId.to_s}",opts)
    end

    def self.search(opts={:name => name})
      FootyData.request("/teams",opts)
    end

    def self.fixtures(teamId,opts={})
      FootyData.request("/teams/#{teamId.to_s}/fixtures",opts)
    end

    def self.players(teamId,opts={})
      FootyData.request("/teams/#{teamId.to_s}/players",opts)
    end

  end
end