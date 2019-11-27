class Preference < ApplicationRecord
  PREFERENCE_TYPES = {
    land_type: ["mer", "campagne", "ville", "montagne"],
    category: ["industrie", "agriculture", "social", "service"],
    duration: ["1-semaine", "1-mois", "2-mois"],
  }
  belongs_to :user
end
