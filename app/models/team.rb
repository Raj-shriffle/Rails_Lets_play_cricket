class Team < ApplicationRecord
	has_many :players
	 def to_s
        teamname
     end
end
