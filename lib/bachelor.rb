def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_data|
    contestant_data.each do |catagories, values|
      if contestant_data["status"] === "Winner"
        return contestant_data["name"].split.first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, array_data|
    array_data.each do |contestant_data|
      if contestant_data["occupation"] == occupation
        return contestant_data["name"]
      end
    end
  end  
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |season, array_data|
    array_data.each do |contestant_data|
      if contestant_data["hometown"] == hometown 
        counter += 1   
      end
    end
  end  
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, array_data|
    array_data.each do |contestant_data|
      if contestant_data["hometown"] == hometown 
        return contestant_data["occupation"]
      end 
    end
  end  
end

def get_average_age_for_season(data, season)
  age = 0 
  contestants = 0 
  data[season].each do |contestant_data|
    age += contestant_data["age"].to_i
    contestants += 1 
  end
  return (age / contestants.to_f).round
end









