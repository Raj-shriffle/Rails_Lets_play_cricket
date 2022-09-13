class Contest < ApplicationRecord
	belongs_to :match
	has_many :user_contests
end
