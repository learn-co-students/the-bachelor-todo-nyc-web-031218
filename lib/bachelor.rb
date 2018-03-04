require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |people|
      #binding.pry
      if people["status"].downcase == "winner"
        return people["name"].split(" ").first
      end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, season_value|
    season_value.each do |attribute|
      #binding.pry
      if attribute["occupation"] == occupation
        return attribute["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0

  data.each do |season, season_value|
    season_value.each do |attribute|
      if attribute["hometown"] == hometown
        counter += 1
      end
    end
  end

  counter
end

def get_occupation(data, hometown)
  data.each do |season, season_value|
    season_value.each do |attribute|
      if attribute["hometown"] == hometown
        return attribute["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total = 0
  num_to_divide = data[season].length
  data[season].each do |season_array|
    total = total + season_array["age"].to_i
  end
  (total / num_to_divide.to_f).round(0)
end
