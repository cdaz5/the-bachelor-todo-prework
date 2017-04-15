
require 'pry'
def get_first_name_of_season_winner(data, season)
  full_name = nil
  data[season].each do |contestant_hash|
    if contestant_hash["status"] == "Winner"
      full_name = contestant_hash["name"].split
  #binding.pry
end
end
full_name[0]
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
  #binding.pry
end
end
end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        count += 1
    end
  end
end
count
end


def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages_strings = []
  ages_ints =[]
  data[season].each do |contestant_hash|
    ages_strings << contestant_hash["age"]
  end
  ages_strings.each do |age|
    ages_ints << age.to_f
end
number_to_be_rounded = ages_ints.inject(0.0) {|sum, el| sum + el }.to_f / ages_ints.size
number_to_be_rounded.round
#binding.pry
end
