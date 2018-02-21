require "pry"

def get_first_name_of_season_winner(data, season)
  winner = ""
  data[season].each do |contestant_hash|
    if contestant_hash["status"] == "Winner"
      winner = contestant_hash["name"]
    end
  end
  # Return first name of winner
  winner.split(' ')[0]
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |season, season_hash|
    season_hash.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        name = contestant_hash["name"]
      end
    end
  end
  # Return full name of winner
  name
end

def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0
  data.each do |season, season_hash|
    season_hash.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        hometown_counter += 1
      end
    end
  end
  hometown_counter
end

def get_occupation(data, hometown)
  first_hometown_contestant = ""
  data.each do |season, season_hash|
    season_hash.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        first_hometown_contestant = contestant_hash["occupation"]
        break
      end
    end
  end
  first_hometown_contestant
end

def get_average_age_for_season(data, season)
  contestant_count = 0
  contestant_total_age = 0
  data[season].each do |contestant_hash|
    contestant_total_age += contestant_hash["age"].to_i
    contestant_count += 1
  end
  (contestant_total_age / contestant_count.to_f).round(0)
end
