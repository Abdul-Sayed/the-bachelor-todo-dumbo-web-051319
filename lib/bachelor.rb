def get_first_name_of_season_winner(data, season_number)

	winner = ""
  data.each { |season, contestants|

		if (season.to_s == season_number)
			contestants.each { |contestant|

				if (contestant[:status] == "Winner")
					winner = contestant[:name]
				end
			}
		end
  }

	return winner.split(" ")[0]
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
