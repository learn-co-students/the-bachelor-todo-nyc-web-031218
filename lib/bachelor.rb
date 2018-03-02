require "pry"

def get_first_name_of_season_winner(data, season)

  name_array = []
  first_name = ""

  data.collect do |season_number, contestants_array|
    if season_number == season
      contestants_array.collect do |contestants_profiles|
        contestants_profiles.collect do |descriptor, descriptor_value|
          if descriptor_value == "Winner"
            name_array = contestants_profiles["name"].split(" ")
            first_name = name_array[0]
          end
        end
      end
    end
  end

  return first_name

end

def get_contestant_name(data, occupation)

  contestant_profile_for_occupation = {}
  contestant_name_for_occupation = ""

  data.collect do |season_number, contestants_array|
    contestants_array.collect do |contestants_profiles|
      contestants_profiles.collect do |descriptor, descriptor_value|
        if descriptor_value == occupation
          contestant_profile_for_occupation = contestants_profiles
          contestant_profile_for_occupation.collect do |descriptor2, descriptor_value2|
            if descriptor2 == "name"
              contestant_name_for_occupation = descriptor_value2
            end
          end
        end
      end
    end
  end

  contestant_name_for_occupation

end

def count_contestants_by_hometown(data, hometown)

  counter = []

  data.collect do |season_number, contestants_array|
    contestants_array.collect do |contestants_profiles|
      contestants_profiles.collect do |descriptor, descriptor_value|
        if descriptor == "hometown"
          if descriptor_value == hometown
            counter << hometown
          end
        end
      end
    end
  end

  counter.length

end

def get_occupation(data, hometown)

  contestants_profiles_from_hometown = []
  first_contestant_profile = {}
  first_contestant_occupation = ""

  data.collect do |season_number, contestants_array|
    contestants_array.collect do |contestants_profiles|
      contestants_profiles.collect do |descriptor, descriptor_value|
        if descriptor_value == hometown
          contestants_profiles_from_hometown << contestants_profiles
        end
      end
    end
  end

first_contestant_profile = contestants_profiles_from_hometown[0]

  first_contestant_profile.collect do |descriptor2, descriptor_value2|
    if descriptor2 == "occupation"
      first_contestant_occupation = descriptor_value2
    end
  end

  first_contestant_occupation

end

def get_average_age_for_season(data, season)

  age_array = []
  average_age = []

  data.collect do |season_number, contestants_array|
    if season_number == season
      contestants_array.collect do |contestants_profiles|
        contestants_profiles.collect do |descriptor, descriptor_value|
          if descriptor == "age"
            age_array << descriptor_value.to_i
          end
        end
      end
    end
  end

  average_age = age_array.inject{ |sum, el| sum + el }.to_f / age_array.size
  average_age.round

end
