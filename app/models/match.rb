class Match < ApplicationRecord
  has_and_belongs_to_many :teams
  has_many :contests
  
  # belongs_to :team
end
