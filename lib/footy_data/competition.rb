require 'HTTParty'

module FootyData
  class Competition

    def self.all(opts={})
      FootyData.request("/competitions",opts)
    end

    def self.find(compId,opts={})
      FootyData.request("/competitions/#{compId.to_s}",opts)
    end

    def self.teams(compId,opts={})
      FootyData.request("/competitions/#{compId.to_s}/teams",opts)
    end

    def self.table(compId,opts={})
      FootyData.request("/competitions/#{compId.to_s}/leagueTable",opts)
    end

    def self.fixtures(compId,opts={})
      FootyData.request("/competitions/#{compId.to_s}/fixtures",opts)
    end

  end
end