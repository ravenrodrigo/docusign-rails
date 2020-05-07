class Position < ApplicationRecord
  # Associations
  belongs_to :document

  # Validations
  validates :document_id, presence: true
  validates_numericality_of :x
  validates_numericality_of :y
end
