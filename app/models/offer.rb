class Offer < ApplicationRecord
  validates :company_name, presence: true
  validates :job_title, presence: true
end
