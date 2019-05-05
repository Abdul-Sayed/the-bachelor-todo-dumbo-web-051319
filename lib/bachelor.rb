def get_first_name_of_season_winner(data, season_number)

	winner = ""
  data.each { |season, contestants|

		if (season.to_s == season_number)
			contestants.each { |contestant|

				if (contestant["status"] == "Winner")
					winner = contestant["name"]
				end
			}
		end
  }

	return winner.split(" ")[0]
end

###############################################################

def get_contestant_name(data, occupation)
  
	data.each { |season, contestants|
		contestants.each { |contestant|
			if (contestant["occupation"] == occupation)
				return contestant["name"]
			end 
		}
	}

end

################################################################

def count_contestants_by_hometown(data, hometown)

	counter = 0

	data.each { |season, contestants|
		contestants.each { |contestant|
			if (contestant["hometown"] == hometown)
				counter += 1
			end 
		}
	}
	return counter
end

################################################################

def get_occupation(data, hometown)

	data.each { |season, contestants|
		contestants.each { |contestant|
			if (contestant["hometown"] == hometown)
				return contestant["occupation"]
			end 
		}
	}

end

###############################################################

def get_average_age_for_season(data, season)
  # code here
end
