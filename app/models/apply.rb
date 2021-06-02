class Apply < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  has_many :comments
  has_many :steps
  has_one_attached :cv
  has_one_attached :lm
  has_many_attached :documents

  include PgSearch::Model
  pg_search_scope :search_by_company_name,
    associated_against: {
      offer: [ :company_name ]
    },
    using: {
      # trigram: { word_similarity: true, threshold: 0.3 }, // pour gerer les typos
      tsearch: { prefix: true }
    }

  def content_for_fullcalendar
    {
      title: status,
      classNames: [status.downcase.gsub(' ', '-').gsub('é', 'e').gsub('à', 'a')],
      start: steps.last.date
    }
  end
end
