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

  def start_parsed
    start_date.strftime("%d/%m/%Y")
  end

  def end_parsed
    end_date.strftime("%d/%m/%Y")
  end

  def email_display
    if email.empty?
      return "Non renseigné"
    else email
    end
  end

  def telephone_display
    if email.empty?
      return "Non renseigné"
    else telephone
    end
  end

  def duration_in_days
    (self.end_date - self.start_date).to_i
  end

  def zip_code_and_city
    self.address.match(/\d{5}.*/)[0].first(17)...
  end
end
