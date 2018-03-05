def get_first_name_of_season_winner(data, season)
  winner = nil
  
  data.each do |seasons, contestant_array|
    if seasons == season
    contestant_array.each do |contestant|
        
        if contestant["status"] == "Winner"
          winner = contestant["name"].split(" ")[0]
        end
      end
    end
  end
  return winner
end

def get_contestant_name(data, occupation)
  contestant_name = nil
  
  data.each do |seasons, contestant_array|
    contestant_array.each do |contestant|
      
      if contestant["occupation"] == occupation
        contestant_name = contestant["name"]
      end
    end
  end
  return contestant_name
end


def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  
  data.each do |season, contestant_array|
    contestant_array.each do |contestant|
      
      if contestant["hometown"] == hometown
        hometown_count += 1
      end
      
    end
  end
return hometown_count
end

def get_occupation(data, hometown)
  occupation = []
  
  data.each do |season, contestant_array|
    contestant_array.each do |contestant|
      
      if contestant["hometown"] == hometown
        occupation << contestant["occupation"]
        occupation = occupation[0]
        return occupation
      end
      
    end
  end
end

def get_average_age_for_season(data, season)
  average_age = []
  
  data.each do |seasons, contestant_array|
    if season == seasons
    contestant_array.each do |contestant|
      average_age << contestant["age"].to_i
      
    end
  end
end
sum = 0
      average_age.each { |age| sum += age }
      average_age = (sum.to_f / average_age.length).round
      return average_age
end
