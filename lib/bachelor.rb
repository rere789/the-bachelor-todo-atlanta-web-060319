require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
    data[season].each do |people|
      people.each do |key, details|
      if details == "Winner"
        winners = people["name"]
          return winners.split(" ").first
      end
    end 
  end 
end

def get_contestant_name(data, occupation)
  # code here
    data.each do |season, people|
      people.each do |key|
        if key["occupation"] == occupation
          return key["name"]
        end 
      end 
    end 
end

def count_contestants_by_hometown(data, hometown)
  # code here
    hometown_count = 0 
    data.each do |season, people|
      people.each do |key|
        if key["hometown"] == hometown
          hometown_count += 1
        end
      end 
    end 
    hometown_count
end

def get_occupation(data, hometown)
  # code here
    data.each do |season, people|
      people.find do |key|
        if key["hometown"] == hometown
          return key["occupation"]
    end
  end 
end
end

def get_average_age_for_season(data, season)
  # code here
    ages = 0 
    count = 0
    data[season].each do |people|
      people.each do |key, num|
        if key == "age"
          count += 1 
          ages += num.to_f
        end 
      end 
    end 
    average = (ages/count).round 
    return average
end
