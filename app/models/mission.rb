class Mission < ApplicationRecord
  belongs_to :job
  belongs_to :user

  def application
    return '<i class="fas fa-hourglass-half"></i><br>Candidature<br>envoyée'.html_safe if self.status == "pending"
    return '<div class="application-validated"><i class="far fa-thumbs-up"></i><br>Candidature<br>validée!</div>'.html_safe if self.status == "validated"
  end
end
