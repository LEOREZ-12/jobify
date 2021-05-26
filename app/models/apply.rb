class Apply < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  has_many :comments
  has_many :steps
  has_one_attached :cv
  has_one_attached :lm
  has_many_attached :documents
end
