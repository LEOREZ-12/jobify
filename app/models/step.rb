class Step < ApplicationRecord
  belongs_to :apply

  NAMES = ['A postuler', 'Candidature envoyée', 'Echange téléphonique', 'Entretien', 'Proposition à recevoir', 'Refus du recruteur', 'Refus du candidat', 'Proposition acceptée']

  after_create :update_apply_status

  private

  def update_apply_status
    apply.update(status: name)
  end

end
