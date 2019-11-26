class Job < ApplicationRecord
  has_many :missions
  has_many :favorites
end
