# FootyData

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'footy_data'
```

And then execute:

```
bundle
```

Or install it yourself with:

```
gem install footy_data
```

## Usage

This gem works with all of the endpoints documented at [football-data.org]("http://api.football-data.org/documentation")

The Football-Data API has three main resources: Competition, Fixture, and Team, and these can be accessed via:

```ruby
FootyData::Competition
FootyData::Fixture
FootyData::Team
```

Calling '.all' or '.find' on a class will return all items for that resource or allow you to locate a discrete record.

```ruby
FootyData::Fixture.all

FootyData::Team.find(64)
```

Sub-resources are accessible by passing the resource ID along with the method

```
FootyData::Competition.table(426) # => 426 is the Competition ID for the English Premier League and .table returns the league table.

FootyData::Team.players(64)       # => A list of players for the team with ID = 64
```

These methods also take a second parameter for filters, which should be passed in via a hash. 
Full documentation for these filters can be found here: [Football-Data#Filters](http://api.football-data.org/docs/v1/index.html#_filters).

```ruby
FootyData::Team.search({:name => "liver"}) # => Search by team name

FootyData::Fixture.all({:timeFrame => "n2"}) # => All fixtures in the database taking place over the next two days

FootyData::Team.fixtures(64,{:timeFrame => "p30"}) # => All fixtures for this team that took place in the past 30 days.
```
