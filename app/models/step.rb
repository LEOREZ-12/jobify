class Step < ApplicationRecord
  belongs_to :apply

  NAMES = ['A postuler', 'Candidature envoyée', 'Echange téléphonique', 'Entretien', 'Proposition à recevoir', 'Refus du recruteur', 'Refus du candidat', 'Proposition acceptée']
end
