class Apply < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  has_many :comments
  has_many :steps
end
