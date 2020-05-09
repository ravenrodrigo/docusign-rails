class Signee < ApplicationRecord
  # Associations
  has_one :document
  has_one :signature

  # Validations
  validates :user_id, presence: true
  validates :document_id, presence: true
  validates :role, presence: true
end
