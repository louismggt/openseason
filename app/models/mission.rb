class Mission < ApplicationRecord
  belongs_to :job
  belongs_to :user

  def application
    return "En attente" if self.status == "pending"
    return "Candidature validée!"if self.status == "validated"
  end
end
