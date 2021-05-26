class Offer < ApplicationRecord
  validates :company_name, presence: true
  validates :job_title, presence: true

  has_many :applies
  has_one_attached :company_logo
end
