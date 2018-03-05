# require 'pry'


def get_first_name_of_season_winner(data, season)

data[season].each {|person|

      # binding.pry
          # binding.pry
        if person["status"] == "Winner"
          # binding.pry
          return person["name"].split(' ')[0]
        end


}

end

def get_contestant_name(data, occupation)
  # code here

  data.each {|season, info|

      info.each{|person|

        if person["occupation"] == occupation
            # binding.pry
          return person["name"]
        end

        }

      }





end

def count_contestants_by_hometown(data, hometown)
  # code here
town_counter = 0
  data.each {|season, info|

      info.each{|person|

          if person["hometown"] == hometown

            town_counter += 1
          end

        }

      }
      return town_counter
end

def get_occupation(data, hometown)
  # code here

  data.each {|season, info|

      info.each{|person|

        if person["hometown"] == hometown
            # binding.pry
          return person["occupation"]
        end

        }

      }

end

def get_average_age_for_season(data, season)
  # code here
  contestantAges = []
  data[season].each {|person|

      contestantAges << person["age"].to_i
  }
  contestantAvg =  contestantAges.inject{|sum, el| sum + el}.to_f / contestantAges.length
  return contestantAvg.round
end
