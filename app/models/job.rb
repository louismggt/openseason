class Job < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :missions
  has_many :favorites


  def duration
    if (end_date - start_date).to_i < 15
      return "1-semaine"
    elsif (end_date - start_date).to_i >= 15 && (end_date - start_date).to_i < 50
      return "1-mois"
    else
      return "2-mois"
    end
  end

  def zip_code_and_city
     self.address.match(/\d{5}.*/)[0].first(17)...
   end

end
