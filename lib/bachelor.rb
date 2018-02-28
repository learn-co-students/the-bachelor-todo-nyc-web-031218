require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  data[season][0]["status"] == "Winner" ?
    data[season][0]["name"].split(" ").first :
      data[season][1]["name"].split(" ").first
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, participants|
    participants.each do |person|
      if person["occupation"] == occupation
        return person["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, participants|
    participants.each do |person|
      if person["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  person = data.flatten.flatten.find { |p| p["hometown"] == hometown }
  person["occupation"]
end

def get_average_age_for_season(data, season)
  # code here
  count = 0
  sum = 0
  data[season].each do |person|
    count += 1
    sum += person["age"].to_i
  end

  (sum/count.to_f).round
end
