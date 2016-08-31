require 'HTTParty'

module FootyData
  class Fixture

    def self.all(opts={})
      FootyData.request("/fixtures",opts)
    end

    def self.find(fixtureId,opts={})
      FootyData.request("/fixtures/#{fixtureId.to_s}",opts)
    end

  end
end