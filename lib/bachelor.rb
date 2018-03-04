require "pry"
def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant|
    contestant.each do |attribute, data|
      if contestant["status"] == "Winner"
        return contestant["name"].split.first
      end
    end
  end
end

# {
#   "season 30": [
#     {
#       "name":      "Beth Smalls",
#       "age":       "26",
#       "hometown":  "Great Falls, Virginia",
#       "occupation":"Nanny/Freelance Journalist",
#       "status":    "Winner"
#     },

def get_contestant_name(data, occupation)
  # code here
  data.each do |seasons, contestants|
    contestants.each do |attributes|
      if attributes["occupation"]==occupation
        return attributes["name"]
      end
        # job << attribute["name"]
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count =0
  data.each do |seasons, contestants|
    contestants.collect do |attributes|
      if attributes["hometown"]==hometown
        count= count + 1
      else
        count
      end
        # job << attribute["name"]
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |seasons, contestants|
    contestants.each do |attributes|
      if attributes["hometown"]==hometown
        return attributes["occupation"]
      end
        # job << attribute["name"]
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  numbers=[]
  data[season].each do |contestant|
    contestant.each do |attribute, data|
      numbers << contestant["age"].to_f
    end
  end
  sum= numbers.reduce(:+)
  length= numbers.size
  average= ((sum)/length).round
end
