class Job < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :missions
  has_many :favorites

  def zip_code_and_city
     self.address.match(/\d{5}.*/)[0].first(17)...
   end
end
