Gem::Specification.new do |s|
  s.name        = 'footy_data'
  s.version     = '0.0.0'
  s.date        = '2010-08-28'
  s.summary     = "A wrapper for the Football-Data API"
  s.description = "A wrapper for the Football-Data API"
  s.authors     = ["Michael Niday"]
  s.email       = 'michael.niday@gmail.com'
  s.files       = [ "lib/footy_data.rb",
                    "lib/footy_data/competition.rb",
                    "lib/footy_data/fixture.rb",
                    "lib/footy_data/team.rb" ]
  s.homepage    = 'http://api.football-data.org/index'

  s.add_development_dependency 'httparty'
  s.add_development_dependency 'json'
end